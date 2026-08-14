package core

import (
	"fmt"
	"strings"

	vs "github.com/voxgig-sdk/bluefin-tecs-user-backoffice-sdk/go/utility/struct"
)

type BluefinTecsUserBackofficeSDK struct {
	Mode     string
	options  map[string]any
	utility  *Utility
	Features []Feature
	rootctx  *Context
}

func NewBluefinTecsUserBackofficeSDK(options map[string]any) *BluefinTecsUserBackofficeSDK {
	sdk := &BluefinTecsUserBackofficeSDK{
		Mode:     "live",
		Features: []Feature{},
	}

	sdk.utility = NewUtility()

	config := SharedConfig()

	sdk.rootctx = sdk.utility.MakeContext(map[string]any{
		"client":  sdk,
		"utility": sdk.utility,
		"config":  config,
		"options": options,
		"shared":  map[string]any{},
	}, nil)

	sdk.options = sdk.utility.MakeOptions(sdk.rootctx)

	if vs.GetPath([]any{"feature", "test", "active"}, sdk.options) == true {
		sdk.Mode = "test"
	}

	sdk.rootctx.Options = sdk.options

	// Add features in the resolved order (MakeOptions puts an explicit array
	// order first, else defaults to test-first). Ordering matters: the `test`
	// feature installs the base mock transport and the transport features
	// (retry/cache/netsim/proxy/ratelimit) wrap whatever is current, so `test`
	// must be added before them to sit at the base of the chain.
	featureOpts := ToMapAny(vs.GetProp(sdk.options, "feature"))
	if featureOpts != nil {
		if fo, ok := vs.GetPath([]any{"__derived__", "featureorder"}, sdk.options).([]any); ok {
			for _, n := range fo {
				fname, _ := n.(string)
				fopts := ToMapAny(featureOpts[fname])
				if fopts != nil {
					if active, ok := fopts["active"]; ok {
						if ab, ok := active.(bool); ok && ab {
							sdk.utility.FeatureAdd(sdk.rootctx, makeFeature(fname))
						}
					}
				}
			}
		}
	}

	// Add extension features.
	if extend := vs.GetProp(sdk.options, "extend"); extend != nil {
		if extList, ok := extend.([]any); ok {
			for _, f := range extList {
				if feat, ok := f.(Feature); ok {
					sdk.utility.FeatureAdd(sdk.rootctx, feat)
				}
			}
		}
	}

	// Initialize features.
	for _, f := range sdk.Features {
		sdk.utility.FeatureInit(sdk.rootctx, f)
	}

	sdk.utility.FeatureHook(sdk.rootctx, "PostConstruct")

	return sdk
}

func (sdk *BluefinTecsUserBackofficeSDK) OptionsMap() map[string]any {
	out := vs.Clone(sdk.options)
	if om, ok := out.(map[string]any); ok {
		return om
	}
	return map[string]any{}
}

func (sdk *BluefinTecsUserBackofficeSDK) GetUtility() *Utility {
	return CopyUtility(sdk.utility)
}

func (sdk *BluefinTecsUserBackofficeSDK) GetRootCtx() *Context {
	return sdk.rootctx
}

func (sdk *BluefinTecsUserBackofficeSDK) Prepare(fetchargs map[string]any) (map[string]any, error) {
	utility := sdk.utility

	if fetchargs == nil {
		fetchargs = map[string]any{}
	}

	var ctrl map[string]any
	if c := vs.GetProp(fetchargs, "ctrl"); c != nil {
		if cm, ok := c.(map[string]any); ok {
			ctrl = cm
		}
	}
	if ctrl == nil {
		ctrl = map[string]any{}
	}

	ctx := utility.MakeContext(map[string]any{
		"opname": "prepare",
		"ctrl":   ctrl,
	}, sdk.rootctx)

	options := sdk.options

	path, _ := vs.GetProp(fetchargs, "path").(string)
	method, _ := vs.GetProp(fetchargs, "method").(string)
	if method == "" {
		method = "GET"
	}

	params := ToMapAny(vs.GetProp(fetchargs, "params"))
	if params == nil {
		params = map[string]any{}
	}
	query := ToMapAny(vs.GetProp(fetchargs, "query"))
	if query == nil {
		query = map[string]any{}
	}

	headers := utility.PrepareHeaders(ctx)

	base, _ := vs.GetProp(options, "base").(string)
	prefix, _ := vs.GetProp(options, "prefix").(string)
	suffix, _ := vs.GetProp(options, "suffix").(string)

	ctx.Spec = NewSpec(map[string]any{
		"base":    base,
		"prefix":  prefix,
		"suffix":  suffix,
		"path":    path,
		"method":  method,
		"params":  params,
		"query":   query,
		"headers": headers,
		"body":    vs.GetProp(fetchargs, "body"),
		"step":    "start",
	})

	// Merge user-provided headers.
	if uh := vs.GetProp(fetchargs, "headers"); uh != nil {
		if uhm, ok := uh.(map[string]any); ok {
			for k, v := range uhm {
				ctx.Spec.Headers[k] = v
			}
		}
	}

	_, err := utility.PrepareAuth(ctx)
	if err != nil {
		return nil, err
	}

	return utility.MakeFetchDef(ctx)
}

// Raw endpoint access is operator-controllable, like every entity op.
// Blocking it means denying BOTH the 'direct' and 'graphql' tokens, since
// either one reaches the same endpoint.
func (sdk *BluefinTecsUserBackofficeSDK) Direct(fetchargs map[string]any) (map[string]any, error) {
	if !sdk.opAllowed("direct") {
		return sdk.opDenied("direct"), nil
	}

	return sdk.rawRequest(fetchargs)
}

// Is this raw-access op permitted by the SDK's allow.op option?
func (sdk *BluefinTecsUserBackofficeSDK) opAllowed(op string) bool {
	allowOp, _ := vs.GetPath([]any{"allow", "op"}, sdk.options).(string)
	return strings.Contains(allowOp, op)
}

func (sdk *BluefinTecsUserBackofficeSDK) opDenied(op string) map[string]any {
	allowOp, _ := vs.GetPath([]any{"allow", "op"}, sdk.options).(string)
	return map[string]any{
		"ok": false,
		"err": fmt.Errorf("BluefinTecsUserBackofficeSDK: %s: operation not allowed by"+
			" SDK option allow.op value: \"%s\"", op, allowOp),
	}
}

// Ungated request path shared by Direct and Graphql, each of which checks
// its own allow.op token first. Unexported, rather than a flag on fetchargs:
// a caller-supplied marker would let anyone opt straight back out of the
// gate by passing it.
func (sdk *BluefinTecsUserBackofficeSDK) rawRequest(fetchargs map[string]any) (map[string]any, error) {
	utility := sdk.utility

	fetchdef, err := sdk.Prepare(fetchargs)
	if err != nil {
		return map[string]any{"ok": false, "err": err}, nil
	}

	if fetchargs == nil {
		fetchargs = map[string]any{}
	}

	var ctrl map[string]any
	if c := vs.GetProp(fetchargs, "ctrl"); c != nil {
		if cm, ok := c.(map[string]any); ok {
			ctrl = cm
		}
	}
	if ctrl == nil {
		ctrl = map[string]any{}
	}

	ctx := utility.MakeContext(map[string]any{
		"opname": "direct",
		"ctrl":   ctrl,
	}, sdk.rootctx)

	url, _ := fetchdef["url"].(string)
	fetched, fetchErr := utility.Fetcher(ctx, url, fetchdef)

	if fetchErr != nil {
		return map[string]any{"ok": false, "err": fetchErr}, nil
	}

	if fetched == nil {
		return map[string]any{
			"ok":  false,
			"err": ctx.MakeError("direct_no_response", "response: undefined"),
		}, nil
	}

	if fm, ok := fetched.(map[string]any); ok {
		status := ToInt(vs.GetProp(fm, "status"))
		headers := vs.GetProp(fm, "headers")

		// No-body responses (204, 304) and explicit zero content-length
		// must skip JSON parsing — calling json() on an empty body errors.
		var contentLength string
		if hm, ok := headers.(map[string]any); ok {
			if cl, ok := hm["content-length"]; ok {
				contentLength = fmt.Sprintf("%v", cl)
			}
		}
		noBody := status == 204 || status == 304 || contentLength == "0"

		var jsonData any
		if !noBody {
			if jf := vs.GetProp(fm, "json"); jf != nil {
				if f, ok := jf.(func() any); ok {
					// f() returns nil on parse error in our fetcher.
					jsonData = f()
				}
			}
		}

		return map[string]any{
			"ok":      status >= 200 && status < 300,
			"status":  status,
			"headers": headers,
			"data":    jsonData,
		}, nil
	}

	return map[string]any{"ok": false, "err": ctx.MakeError("direct_invalid", "invalid response type")}, nil
}

// Raw GraphQL access: the pressure valve that makes the generated surface's
// deliberate omissions (per-call selection sets, typed filter builders,
// batching, subscriptions) livable — the whole schema stays reachable.
//
// Thin wrapper over the same prepare/fetch path Direct uses, with the one
// thing raw Direct cannot do for GraphQL: a GraphQL failure rides HTTP 200
// as a top-level `errors` array, so status alone would report a failed query
// as ok.
//
// NOTE: like Direct, this bypasses the feature pipeline — no retry,
// ratelimit or paging features apply.
func (sdk *BluefinTecsUserBackofficeSDK) Graphql(
	query string, variables map[string]any, ctrl map[string]any,
) (map[string]any, error) {
	if !sdk.opAllowed("graphql") {
		return sdk.opDenied("graphql"), nil
	}

	if variables == nil {
		variables = map[string]any{}
	}
	if ctrl == nil {
		ctrl = map[string]any{}
	}

	res, err := sdk.rawRequest(map[string]any{
		"method":  "POST",
		"headers": map[string]any{"content-type": "application/json"},
		"body":    map[string]any{"query": query, "variables": variables},
		"ctrl":    ctrl,
	})

	if err != nil {
		return res, err
	}

	// Errors are read BEFORE any status check: a GraphQL parse or validation
	// failure comes back as HTTP 400 carrying the standard { errors: [...] }
	// body, and the raw path represents a non-2xx as ok:false with no err —
	// so returning early on status would discard the server's own
	// diagnostics, which are the only useful part of that response.
	errors, _ := vs.GetPath([]any{"data", "errors"}, res).([]any)

	if 0 < len(errors) {
		msg, _ := vs.GetProp(errors[0], "message").(string)
		if msg == "" {
			msg = "graphql error"
		}
		res["ok"] = false
		res["err"] = fmt.Errorf("BluefinTecsUserBackofficeSDK: graphql: %s", msg)
		res["graphql"] = errors
	}

	return res, nil
}


// OutputActivateDigitalModule returns a OutputActivateDigitalModule entity bound to this client.
// Idiomatic usage: client.OutputActivateDigitalModule(nil).List(nil, nil) or
// client.OutputActivateDigitalModule(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsUserBackofficeSDK) OutputActivateDigitalModule(data map[string]any) BluefinTecsUserBackofficeEntity {
	return NewOutputActivateDigitalModuleEntityFunc(sdk, data)
}


// OutputActivatePortalModule returns a OutputActivatePortalModule entity bound to this client.
// Idiomatic usage: client.OutputActivatePortalModule(nil).List(nil, nil) or
// client.OutputActivatePortalModule(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsUserBackofficeSDK) OutputActivatePortalModule(data map[string]any) BluefinTecsUserBackofficeEntity {
	return NewOutputActivatePortalModuleEntityFunc(sdk, data)
}


// OutputActivateStoreModule returns a OutputActivateStoreModule entity bound to this client.
// Idiomatic usage: client.OutputActivateStoreModule(nil).List(nil, nil) or
// client.OutputActivateStoreModule(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsUserBackofficeSDK) OutputActivateStoreModule(data map[string]any) BluefinTecsUserBackofficeEntity {
	return NewOutputActivateStoreModuleEntityFunc(sdk, data)
}


// OutputActivateUser returns a OutputActivateUser entity bound to this client.
// Idiomatic usage: client.OutputActivateUser(nil).List(nil, nil) or
// client.OutputActivateUser(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsUserBackofficeSDK) OutputActivateUser(data map[string]any) BluefinTecsUserBackofficeEntity {
	return NewOutputActivateUserEntityFunc(sdk, data)
}


// OutputAssignRole returns a OutputAssignRole entity bound to this client.
// Idiomatic usage: client.OutputAssignRole(nil).List(nil, nil) or
// client.OutputAssignRole(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsUserBackofficeSDK) OutputAssignRole(data map[string]any) BluefinTecsUserBackofficeEntity {
	return NewOutputAssignRoleEntityFunc(sdk, data)
}


// OutputChangeLogo returns a OutputChangeLogo entity bound to this client.
// Idiomatic usage: client.OutputChangeLogo(nil).List(nil, nil) or
// client.OutputChangeLogo(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsUserBackofficeSDK) OutputChangeLogo(data map[string]any) BluefinTecsUserBackofficeEntity {
	return NewOutputChangeLogoEntityFunc(sdk, data)
}


// OutputCreateMandator returns a OutputCreateMandator entity bound to this client.
// Idiomatic usage: client.OutputCreateMandator(nil).List(nil, nil) or
// client.OutputCreateMandator(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsUserBackofficeSDK) OutputCreateMandator(data map[string]any) BluefinTecsUserBackofficeEntity {
	return NewOutputCreateMandatorEntityFunc(sdk, data)
}


// OutputCreateServiceUser returns a OutputCreateServiceUser entity bound to this client.
// Idiomatic usage: client.OutputCreateServiceUser(nil).List(nil, nil) or
// client.OutputCreateServiceUser(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsUserBackofficeSDK) OutputCreateServiceUser(data map[string]any) BluefinTecsUserBackofficeEntity {
	return NewOutputCreateServiceUserEntityFunc(sdk, data)
}


// OutputDeactivateUser returns a OutputDeactivateUser entity bound to this client.
// Idiomatic usage: client.OutputDeactivateUser(nil).List(nil, nil) or
// client.OutputDeactivateUser(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsUserBackofficeSDK) OutputDeactivateUser(data map[string]any) BluefinTecsUserBackofficeEntity {
	return NewOutputDeactivateUserEntityFunc(sdk, data)
}


// OutputGetKycDocument returns a OutputGetKycDocument entity bound to this client.
// Idiomatic usage: client.OutputGetKycDocument(nil).List(nil, nil) or
// client.OutputGetKycDocument(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsUserBackofficeSDK) OutputGetKycDocument(data map[string]any) BluefinTecsUserBackofficeEntity {
	return NewOutputGetKycDocumentEntityFunc(sdk, data)
}


// OutputGetLogo returns a OutputGetLogo entity bound to this client.
// Idiomatic usage: client.OutputGetLogo(nil).List(nil, nil) or
// client.OutputGetLogo(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsUserBackofficeSDK) OutputGetLogo(data map[string]any) BluefinTecsUserBackofficeEntity {
	return NewOutputGetLogoEntityFunc(sdk, data)
}


// OutputListOfAvailableRole returns a OutputListOfAvailableRole entity bound to this client.
// Idiomatic usage: client.OutputListOfAvailableRole(nil).List(nil, nil) or
// client.OutputListOfAvailableRole(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsUserBackofficeSDK) OutputListOfAvailableRole(data map[string]any) BluefinTecsUserBackofficeEntity {
	return NewOutputListOfAvailableRoleEntityFunc(sdk, data)
}


// OutputListOfMandator returns a OutputListOfMandator entity bound to this client.
// Idiomatic usage: client.OutputListOfMandator(nil).List(nil, nil) or
// client.OutputListOfMandator(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsUserBackofficeSDK) OutputListOfMandator(data map[string]any) BluefinTecsUserBackofficeEntity {
	return NewOutputListOfMandatorEntityFunc(sdk, data)
}


// OutputListOfModule returns a OutputListOfModule entity bound to this client.
// Idiomatic usage: client.OutputListOfModule(nil).List(nil, nil) or
// client.OutputListOfModule(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsUserBackofficeSDK) OutputListOfModule(data map[string]any) BluefinTecsUserBackofficeEntity {
	return NewOutputListOfModuleEntityFunc(sdk, data)
}


// OutputListOfRoleGroup returns a OutputListOfRoleGroup entity bound to this client.
// Idiomatic usage: client.OutputListOfRoleGroup(nil).List(nil, nil) or
// client.OutputListOfRoleGroup(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsUserBackofficeSDK) OutputListOfRoleGroup(data map[string]any) BluefinTecsUserBackofficeEntity {
	return NewOutputListOfRoleGroupEntityFunc(sdk, data)
}


// OutputListOfTransactionsHistory returns a OutputListOfTransactionsHistory entity bound to this client.
// Idiomatic usage: client.OutputListOfTransactionsHistory(nil).List(nil, nil) or
// client.OutputListOfTransactionsHistory(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsUserBackofficeSDK) OutputListOfTransactionsHistory(data map[string]any) BluefinTecsUserBackofficeEntity {
	return NewOutputListOfTransactionsHistoryEntityFunc(sdk, data)
}


// OutputListOfUser returns a OutputListOfUser entity bound to this client.
// Idiomatic usage: client.OutputListOfUser(nil).List(nil, nil) or
// client.OutputListOfUser(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsUserBackofficeSDK) OutputListOfUser(data map[string]any) BluefinTecsUserBackofficeEntity {
	return NewOutputListOfUserEntityFunc(sdk, data)
}


// OutputProvideCredential returns a OutputProvideCredential entity bound to this client.
// Idiomatic usage: client.OutputProvideCredential(nil).List(nil, nil) or
// client.OutputProvideCredential(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsUserBackofficeSDK) OutputProvideCredential(data map[string]any) BluefinTecsUserBackofficeEntity {
	return NewOutputProvideCredentialEntityFunc(sdk, data)
}


// OutputRegisterUser returns a OutputRegisterUser entity bound to this client.
// Idiomatic usage: client.OutputRegisterUser(nil).List(nil, nil) or
// client.OutputRegisterUser(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsUserBackofficeSDK) OutputRegisterUser(data map[string]any) BluefinTecsUserBackofficeEntity {
	return NewOutputRegisterUserEntityFunc(sdk, data)
}


// OutputRemoveRole returns a OutputRemoveRole entity bound to this client.
// Idiomatic usage: client.OutputRemoveRole(nil).List(nil, nil) or
// client.OutputRemoveRole(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsUserBackofficeSDK) OutputRemoveRole(data map[string]any) BluefinTecsUserBackofficeEntity {
	return NewOutputRemoveRoleEntityFunc(sdk, data)
}


// OutputResendLink returns a OutputResendLink entity bound to this client.
// Idiomatic usage: client.OutputResendLink(nil).List(nil, nil) or
// client.OutputResendLink(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsUserBackofficeSDK) OutputResendLink(data map[string]any) BluefinTecsUserBackofficeEntity {
	return NewOutputResendLinkEntityFunc(sdk, data)
}


// OutputResetPassword returns a OutputResetPassword entity bound to this client.
// Idiomatic usage: client.OutputResetPassword(nil).List(nil, nil) or
// client.OutputResetPassword(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsUserBackofficeSDK) OutputResetPassword(data map[string]any) BluefinTecsUserBackofficeEntity {
	return NewOutputResetPasswordEntityFunc(sdk, data)
}


// OutputUpdateConsumer returns a OutputUpdateConsumer entity bound to this client.
// Idiomatic usage: client.OutputUpdateConsumer(nil).List(nil, nil) or
// client.OutputUpdateConsumer(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsUserBackofficeSDK) OutputUpdateConsumer(data map[string]any) BluefinTecsUserBackofficeEntity {
	return NewOutputUpdateConsumerEntityFunc(sdk, data)
}


// OutputUpdateProfile returns a OutputUpdateProfile entity bound to this client.
// Idiomatic usage: client.OutputUpdateProfile(nil).List(nil, nil) or
// client.OutputUpdateProfile(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsUserBackofficeSDK) OutputUpdateProfile(data map[string]any) BluefinTecsUserBackofficeEntity {
	return NewOutputUpdateProfileEntityFunc(sdk, data)
}


// Version returns a Version entity bound to this client.
// Idiomatic usage: client.Version(nil).List(nil, nil) or
// client.Version(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsUserBackofficeSDK) Version(data map[string]any) BluefinTecsUserBackofficeEntity {
	return NewVersionEntityFunc(sdk, data)
}



func TestSDK(testopts map[string]any, sdkopts map[string]any) *BluefinTecsUserBackofficeSDK {
	if sdkopts == nil {
		sdkopts = map[string]any{}
	}
	sdkopts = vs.Clone(sdkopts).(map[string]any)

	if testopts == nil {
		testopts = map[string]any{}
	}
	testopts = vs.Clone(testopts).(map[string]any)
	testopts["active"] = true

	vs.SetPath(sdkopts, []any{"feature", "test"}, testopts)

	sdk := NewBluefinTecsUserBackofficeSDK(sdkopts)
	sdk.Mode = "test"

	return sdk
}
