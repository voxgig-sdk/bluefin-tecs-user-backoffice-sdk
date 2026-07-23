package voxgigbluefintecsuserbackofficesdk

import (
	"github.com/voxgig-sdk/bluefin-tecs-user-backoffice-sdk/go/core"
	"github.com/voxgig-sdk/bluefin-tecs-user-backoffice-sdk/go/entity"
	"github.com/voxgig-sdk/bluefin-tecs-user-backoffice-sdk/go/feature"
	_ "github.com/voxgig-sdk/bluefin-tecs-user-backoffice-sdk/go/utility"
)

// Type aliases preserve external API.
type BluefinTecsUserBackofficeSDK = core.BluefinTecsUserBackofficeSDK
type Context = core.Context
type Utility = core.Utility
type Feature = core.Feature
type Entity = core.Entity
type BluefinTecsUserBackofficeEntity = core.BluefinTecsUserBackofficeEntity
type FetcherFunc = core.FetcherFunc
type Spec = core.Spec
type Result = core.Result
type Response = core.Response
type Operation = core.Operation
type Control = core.Control
type BluefinTecsUserBackofficeError = core.BluefinTecsUserBackofficeError

// BaseFeature from feature package.
type BaseFeature = feature.BaseFeature

func init() {
	core.NewBaseFeatureFunc = func() core.Feature {
		return feature.NewBaseFeature()
	}
	core.NewTestFeatureFunc = func() core.Feature {
		return feature.NewTestFeature()
	}
	core.NewOutputActivateDigitalModuleEntityFunc = func(client *core.BluefinTecsUserBackofficeSDK, entopts map[string]any) core.BluefinTecsUserBackofficeEntity {
		return entity.NewOutputActivateDigitalModuleEntity(client, entopts)
	}
	core.NewOutputActivatePortalModuleEntityFunc = func(client *core.BluefinTecsUserBackofficeSDK, entopts map[string]any) core.BluefinTecsUserBackofficeEntity {
		return entity.NewOutputActivatePortalModuleEntity(client, entopts)
	}
	core.NewOutputActivateStoreModuleEntityFunc = func(client *core.BluefinTecsUserBackofficeSDK, entopts map[string]any) core.BluefinTecsUserBackofficeEntity {
		return entity.NewOutputActivateStoreModuleEntity(client, entopts)
	}
	core.NewOutputActivateUserEntityFunc = func(client *core.BluefinTecsUserBackofficeSDK, entopts map[string]any) core.BluefinTecsUserBackofficeEntity {
		return entity.NewOutputActivateUserEntity(client, entopts)
	}
	core.NewOutputAssignRoleEntityFunc = func(client *core.BluefinTecsUserBackofficeSDK, entopts map[string]any) core.BluefinTecsUserBackofficeEntity {
		return entity.NewOutputAssignRoleEntity(client, entopts)
	}
	core.NewOutputChangeLogoEntityFunc = func(client *core.BluefinTecsUserBackofficeSDK, entopts map[string]any) core.BluefinTecsUserBackofficeEntity {
		return entity.NewOutputChangeLogoEntity(client, entopts)
	}
	core.NewOutputCreateMandatorEntityFunc = func(client *core.BluefinTecsUserBackofficeSDK, entopts map[string]any) core.BluefinTecsUserBackofficeEntity {
		return entity.NewOutputCreateMandatorEntity(client, entopts)
	}
	core.NewOutputCreateServiceUserEntityFunc = func(client *core.BluefinTecsUserBackofficeSDK, entopts map[string]any) core.BluefinTecsUserBackofficeEntity {
		return entity.NewOutputCreateServiceUserEntity(client, entopts)
	}
	core.NewOutputDeactivateUserEntityFunc = func(client *core.BluefinTecsUserBackofficeSDK, entopts map[string]any) core.BluefinTecsUserBackofficeEntity {
		return entity.NewOutputDeactivateUserEntity(client, entopts)
	}
	core.NewOutputGetKycDocumentEntityFunc = func(client *core.BluefinTecsUserBackofficeSDK, entopts map[string]any) core.BluefinTecsUserBackofficeEntity {
		return entity.NewOutputGetKycDocumentEntity(client, entopts)
	}
	core.NewOutputGetLogoEntityFunc = func(client *core.BluefinTecsUserBackofficeSDK, entopts map[string]any) core.BluefinTecsUserBackofficeEntity {
		return entity.NewOutputGetLogoEntity(client, entopts)
	}
	core.NewOutputListOfAvailableRoleEntityFunc = func(client *core.BluefinTecsUserBackofficeSDK, entopts map[string]any) core.BluefinTecsUserBackofficeEntity {
		return entity.NewOutputListOfAvailableRoleEntity(client, entopts)
	}
	core.NewOutputListOfMandatorEntityFunc = func(client *core.BluefinTecsUserBackofficeSDK, entopts map[string]any) core.BluefinTecsUserBackofficeEntity {
		return entity.NewOutputListOfMandatorEntity(client, entopts)
	}
	core.NewOutputListOfModuleEntityFunc = func(client *core.BluefinTecsUserBackofficeSDK, entopts map[string]any) core.BluefinTecsUserBackofficeEntity {
		return entity.NewOutputListOfModuleEntity(client, entopts)
	}
	core.NewOutputListOfRoleGroupEntityFunc = func(client *core.BluefinTecsUserBackofficeSDK, entopts map[string]any) core.BluefinTecsUserBackofficeEntity {
		return entity.NewOutputListOfRoleGroupEntity(client, entopts)
	}
	core.NewOutputListOfTransactionsHistoryEntityFunc = func(client *core.BluefinTecsUserBackofficeSDK, entopts map[string]any) core.BluefinTecsUserBackofficeEntity {
		return entity.NewOutputListOfTransactionsHistoryEntity(client, entopts)
	}
	core.NewOutputListOfUserEntityFunc = func(client *core.BluefinTecsUserBackofficeSDK, entopts map[string]any) core.BluefinTecsUserBackofficeEntity {
		return entity.NewOutputListOfUserEntity(client, entopts)
	}
	core.NewOutputProvideCredentialEntityFunc = func(client *core.BluefinTecsUserBackofficeSDK, entopts map[string]any) core.BluefinTecsUserBackofficeEntity {
		return entity.NewOutputProvideCredentialEntity(client, entopts)
	}
	core.NewOutputRegisterUserEntityFunc = func(client *core.BluefinTecsUserBackofficeSDK, entopts map[string]any) core.BluefinTecsUserBackofficeEntity {
		return entity.NewOutputRegisterUserEntity(client, entopts)
	}
	core.NewOutputRemoveRoleEntityFunc = func(client *core.BluefinTecsUserBackofficeSDK, entopts map[string]any) core.BluefinTecsUserBackofficeEntity {
		return entity.NewOutputRemoveRoleEntity(client, entopts)
	}
	core.NewOutputResendLinkEntityFunc = func(client *core.BluefinTecsUserBackofficeSDK, entopts map[string]any) core.BluefinTecsUserBackofficeEntity {
		return entity.NewOutputResendLinkEntity(client, entopts)
	}
	core.NewOutputResetPasswordEntityFunc = func(client *core.BluefinTecsUserBackofficeSDK, entopts map[string]any) core.BluefinTecsUserBackofficeEntity {
		return entity.NewOutputResetPasswordEntity(client, entopts)
	}
	core.NewOutputUpdateConsumerEntityFunc = func(client *core.BluefinTecsUserBackofficeSDK, entopts map[string]any) core.BluefinTecsUserBackofficeEntity {
		return entity.NewOutputUpdateConsumerEntity(client, entopts)
	}
	core.NewOutputUpdateProfileEntityFunc = func(client *core.BluefinTecsUserBackofficeSDK, entopts map[string]any) core.BluefinTecsUserBackofficeEntity {
		return entity.NewOutputUpdateProfileEntity(client, entopts)
	}
	core.NewVersionEntityFunc = func(client *core.BluefinTecsUserBackofficeSDK, entopts map[string]any) core.BluefinTecsUserBackofficeEntity {
		return entity.NewVersionEntity(client, entopts)
	}
}

// Constructor re-exports.
var NewBluefinTecsUserBackofficeSDK = core.NewBluefinTecsUserBackofficeSDK
var TestSDK = core.TestSDK
var NewContext = core.NewContext
var NewSpec = core.NewSpec
var NewResult = core.NewResult
var NewResponse = core.NewResponse
var NewOperation = core.NewOperation
var MakeConfig = core.MakeConfig

// No-arg convenience constructors. Go has no default-argument syntax,
// so these aliases let callers write `sdk.New()` / `sdk.Test()`
// instead of `sdk.NewBluefinTecsUserBackofficeSDK(nil)` / `sdk.TestSDK(nil, nil)`
// for the common no-options case.
func New() *BluefinTecsUserBackofficeSDK  { return NewBluefinTecsUserBackofficeSDK(nil) }
func Test() *BluefinTecsUserBackofficeSDK { return TestSDK(nil, nil) }
var NewBaseFeature = feature.NewBaseFeature
var NewTestFeature = feature.NewTestFeature
