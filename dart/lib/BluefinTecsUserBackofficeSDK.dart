// BluefinTecsUserBackoffice Dart SDK

import 'entity/OutputActivateDigitalModuleEntity.dart';
import 'entity/OutputActivatePortalModuleEntity.dart';
import 'entity/OutputActivateStoreModuleEntity.dart';
import 'entity/OutputActivateUserEntity.dart';
import 'entity/OutputAssignRoleEntity.dart';
import 'entity/OutputChangeLogoEntity.dart';
import 'entity/OutputCreateMandatorEntity.dart';
import 'entity/OutputCreateServiceUserEntity.dart';
import 'entity/OutputDeactivateUserEntity.dart';
import 'entity/OutputGetKycDocumentEntity.dart';
import 'entity/OutputGetLogoEntity.dart';
import 'entity/OutputListOfAvailableRoleEntity.dart';
import 'entity/OutputListOfMandatorEntity.dart';
import 'entity/OutputListOfModuleEntity.dart';
import 'entity/OutputListOfRoleGroupEntity.dart';
import 'entity/OutputListOfTransactionsHistoryEntity.dart';
import 'entity/OutputListOfUserEntity.dart';
import 'entity/OutputProvideCredentialEntity.dart';
import 'entity/OutputRegisterUserEntity.dart';
import 'entity/OutputRemoveRoleEntity.dart';
import 'entity/OutputResendLinkEntity.dart';
import 'entity/OutputResetPasswordEntity.dart';
import 'entity/OutputUpdateConsumerEntity.dart';
import 'entity/OutputUpdateProfileEntity.dart';
import 'entity/VersionEntity.dart';


export 'BluefinTecsUserBackofficeTypes.dart';
export 'entity/OutputActivateDigitalModuleEntity.dart';
export 'entity/OutputActivatePortalModuleEntity.dart';
export 'entity/OutputActivateStoreModuleEntity.dart';
export 'entity/OutputActivateUserEntity.dart';
export 'entity/OutputAssignRoleEntity.dart';
export 'entity/OutputChangeLogoEntity.dart';
export 'entity/OutputCreateMandatorEntity.dart';
export 'entity/OutputCreateServiceUserEntity.dart';
export 'entity/OutputDeactivateUserEntity.dart';
export 'entity/OutputGetKycDocumentEntity.dart';
export 'entity/OutputGetLogoEntity.dart';
export 'entity/OutputListOfAvailableRoleEntity.dart';
export 'entity/OutputListOfMandatorEntity.dart';
export 'entity/OutputListOfModuleEntity.dart';
export 'entity/OutputListOfRoleGroupEntity.dart';
export 'entity/OutputListOfTransactionsHistoryEntity.dart';
export 'entity/OutputListOfUserEntity.dart';
export 'entity/OutputProvideCredentialEntity.dart';
export 'entity/OutputRegisterUserEntity.dart';
export 'entity/OutputRemoveRoleEntity.dart';
export 'entity/OutputResendLinkEntity.dart';
export 'entity/OutputResetPasswordEntity.dart';
export 'entity/OutputUpdateConsumerEntity.dart';
export 'entity/OutputUpdateProfileEntity.dart';
export 'entity/VersionEntity.dart';


// ignore_for_file: non_constant_identifier_names

import 'dart:async';

import 'Config.dart';
import 'Spec.dart';
// BluefinTecsUserBackofficeEntityBase / BluefinTecsUserBackofficeError / BaseFeature are re-exported below;
// a Dart `export` needs no matching `import`, so importing them here too is an
// unused_import. Keep only the imports actually referenced in this file.
import 'utility/ErrUtility.dart';
import 'utility/Utility.dart';

export 'Config.dart' show Config, config;
export 'BluefinTecsUserBackofficeEntityBase.dart' show BluefinTecsUserBackofficeEntityBase;
export 'BluefinTecsUserBackofficeError.dart' show BluefinTecsUserBackofficeError;
export 'feature/base/BaseFeature.dart' show BaseFeature;
export 'utility/Utility.dart' show Utility;

final Utility stdutil = Utility();

class BluefinTecsUserBackofficeSDK {
  String mode = 'live';
  dynamic _options;
  final Utility _utility = Utility();
  List<dynamic> features = [];
  dynamic rootctx;

  // Feature activity tracking store (retry attempts, cache hits, spans, ...).
  final Map<String, dynamic> track = {};

  BluefinTecsUserBackofficeSDK([dynamic options]) {
    rootctx = _utility.makeContext({
      'client': this,
      'utility': _utility,
      'config': config.toMap(),
      'options': options,
      'shared': {},
    });

    _options = _utility.makeOptions(rootctx);

    final struct = _utility.struct;

    if (true == struct.getpath(_options, 'feature.test.active')) {
      mode = 'test';
    }

    rootctx.options = _options;

    features = [];

    final featureAdd = _utility.featureAdd;
    final featureInit = _utility.featureInit;

    // Add features in the resolved order (makeOptions puts an explicit List
    // order first, else defaults to test-first). Ordering matters: the
    // `test` feature installs the base mock transport and the transport
    // features (retry/cache/netsim/proxy/ratelimit) wrap whatever is current,
    // so `test` must be added before them to sit at the base of the chain.
    final featureorder =
        struct.getpath(_options, '__derived__.featureorder') ?? [];
    for (final fname in featureorder) {
      final fopts = _options['feature'][fname];
      if (fopts is Map && true == fopts['active']) {
        featureAdd(rootctx, config.makeFeature(fname.toString()));
      }
    }

    if (null != _options['extend']) {
      for (final f in _options['extend']) {
        featureAdd(rootctx, f);
      }
    }

    for (final f in features) {
      featureInit(rootctx, f);
    }

    final featureHook = _utility.featureHook;
    featureHook(rootctx, 'PostConstruct');
  }

  dynamic options() {
    return _utility.struct.clone(_options);
  }

  Utility utility() {
    return _utility;
  }

  Future<dynamic> prepare([dynamic fetchargs]) async {
    final utility = _utility;

    final makeContext = utility.makeContext;
    final makeFetchDef = utility.makeFetchDef;
    final prepareHeaders = utility.prepareHeaders;
    final prepareAuth = utility.prepareAuth;

    fetchargs = fetchargs ?? {};

    final ctx = makeContext({
      'opname': 'prepare',
      'ctrl': fetchargs['ctrl'] ?? {},
    }, rootctx);

    final options = _options;

    // Build spec directly from SDK options + user-provided fetch args.
    final spec = Spec({
      'base': options['base'],
      'prefix': options['prefix'],
      'suffix': options['suffix'],
      'path': fetchargs['path'] ?? '',
      'method': fetchargs['method'] ?? 'GET',
      'params': fetchargs['params'] ?? {},
      'query': fetchargs['query'] ?? {},
      'body': fetchargs['body'],
      'step': 'start',
    });

    ctx.spec = spec;

    spec.headers = prepareHeaders(ctx);

    // Merge user-provided headers over SDK defaults.
    if (fetchargs['headers'] is Map) {
      (fetchargs['headers'] as Map).forEach((key, val) {
        spec.headers[key] = val;
      });
    }

    // Apply SDK auth (apikey, auth prefix, etc.)
    final authResult = prepareAuth(ctx);
    if (iserr(authResult)) {
      return authResult;
    }

    return makeFetchDef(ctx);
  }

  Future<dynamic> direct([dynamic fetchargs]) async {
    final utility = _utility;
    final fetcher = utility.fetcher;
    final makeContext = utility.makeContext;

    final fetchdef = await prepare(fetchargs);
    if (iserr(fetchdef)) {
      return fetchdef;
    }

    final ctx = makeContext({
      'opname': 'direct',
      'ctrl': (fetchargs ?? {})['ctrl'] ?? {},
    }, rootctx);

    try {
      final dynamic fetched =
          await Future.value(fetcher(ctx, fetchdef['url'], fetchdef));

      if (null == fetched) {
        return {
          'ok': false,
          'err': ctx.error('direct_no_response', 'response: undefined')
        };
      } else if (iserr(fetched)) {
        return {'ok': false, 'err': fetched};
      }

      final status = fetched['status'];

      // No body responses (204 No Content, 304 Not Modified) and explicit
      // zero content-length must skip JSON parsing.
      final headers = fetched['headers'];
      final contentLength =
          headers is Map ? headers['content-length'] : null;
      final noBody = 204 == status ||
          304 == status ||
          '0' == (null == contentLength ? null : contentLength.toString());

      dynamic json;
      if (!noBody) {
        try {
          final jsonFn = fetched['json'];
          json = jsonFn is Function
              ? await Future.value(jsonFn())
              : fetched['json'];
        } catch (_parseErr) {
          // Body wasn't valid JSON — surface the raw response rather than
          // throwing. data stays null; callers can inspect status/headers.
          json = null;
        }
      }

      return {
        'ok': status is num && status >= 200 && status < 300,
        'status': status,
        'headers': fetched['headers'],
        'data': json,
      };
    } catch (err) {
      return {'ok': false, 'err': err};
    }
  }


  // Entity access: `client.OutputActivateDigitalModule().list()` / `client.OutputActivateDigitalModule().load({'id': ...})`.
  OutputActivateDigitalModuleEntity OutputActivateDigitalModule([dynamic entopts]) {
    return OutputActivateDigitalModuleEntity(this, entopts);
  }


  // Entity access: `client.OutputActivatePortalModule().list()` / `client.OutputActivatePortalModule().load({'id': ...})`.
  OutputActivatePortalModuleEntity OutputActivatePortalModule([dynamic entopts]) {
    return OutputActivatePortalModuleEntity(this, entopts);
  }


  // Entity access: `client.OutputActivateStoreModule().list()` / `client.OutputActivateStoreModule().load({'id': ...})`.
  OutputActivateStoreModuleEntity OutputActivateStoreModule([dynamic entopts]) {
    return OutputActivateStoreModuleEntity(this, entopts);
  }


  // Entity access: `client.OutputActivateUser().list()` / `client.OutputActivateUser().load({'id': ...})`.
  OutputActivateUserEntity OutputActivateUser([dynamic entopts]) {
    return OutputActivateUserEntity(this, entopts);
  }


  // Entity access: `client.OutputAssignRole().list()` / `client.OutputAssignRole().load({'id': ...})`.
  OutputAssignRoleEntity OutputAssignRole([dynamic entopts]) {
    return OutputAssignRoleEntity(this, entopts);
  }


  // Entity access: `client.OutputChangeLogo().list()` / `client.OutputChangeLogo().load({'id': ...})`.
  OutputChangeLogoEntity OutputChangeLogo([dynamic entopts]) {
    return OutputChangeLogoEntity(this, entopts);
  }


  // Entity access: `client.OutputCreateMandator().list()` / `client.OutputCreateMandator().load({'id': ...})`.
  OutputCreateMandatorEntity OutputCreateMandator([dynamic entopts]) {
    return OutputCreateMandatorEntity(this, entopts);
  }


  // Entity access: `client.OutputCreateServiceUser().list()` / `client.OutputCreateServiceUser().load({'id': ...})`.
  OutputCreateServiceUserEntity OutputCreateServiceUser([dynamic entopts]) {
    return OutputCreateServiceUserEntity(this, entopts);
  }


  // Entity access: `client.OutputDeactivateUser().list()` / `client.OutputDeactivateUser().load({'id': ...})`.
  OutputDeactivateUserEntity OutputDeactivateUser([dynamic entopts]) {
    return OutputDeactivateUserEntity(this, entopts);
  }


  // Entity access: `client.OutputGetKycDocument().list()` / `client.OutputGetKycDocument().load({'id': ...})`.
  OutputGetKycDocumentEntity OutputGetKycDocument([dynamic entopts]) {
    return OutputGetKycDocumentEntity(this, entopts);
  }


  // Entity access: `client.OutputGetLogo().list()` / `client.OutputGetLogo().load({'id': ...})`.
  OutputGetLogoEntity OutputGetLogo([dynamic entopts]) {
    return OutputGetLogoEntity(this, entopts);
  }


  // Entity access: `client.OutputListOfAvailableRole().list()` / `client.OutputListOfAvailableRole().load({'id': ...})`.
  OutputListOfAvailableRoleEntity OutputListOfAvailableRole([dynamic entopts]) {
    return OutputListOfAvailableRoleEntity(this, entopts);
  }


  // Entity access: `client.OutputListOfMandator().list()` / `client.OutputListOfMandator().load({'id': ...})`.
  OutputListOfMandatorEntity OutputListOfMandator([dynamic entopts]) {
    return OutputListOfMandatorEntity(this, entopts);
  }


  // Entity access: `client.OutputListOfModule().list()` / `client.OutputListOfModule().load({'id': ...})`.
  OutputListOfModuleEntity OutputListOfModule([dynamic entopts]) {
    return OutputListOfModuleEntity(this, entopts);
  }


  // Entity access: `client.OutputListOfRoleGroup().list()` / `client.OutputListOfRoleGroup().load({'id': ...})`.
  OutputListOfRoleGroupEntity OutputListOfRoleGroup([dynamic entopts]) {
    return OutputListOfRoleGroupEntity(this, entopts);
  }


  // Entity access: `client.OutputListOfTransactionsHistory().list()` / `client.OutputListOfTransactionsHistory().load({'id': ...})`.
  OutputListOfTransactionsHistoryEntity OutputListOfTransactionsHistory([dynamic entopts]) {
    return OutputListOfTransactionsHistoryEntity(this, entopts);
  }


  // Entity access: `client.OutputListOfUser().list()` / `client.OutputListOfUser().load({'id': ...})`.
  OutputListOfUserEntity OutputListOfUser([dynamic entopts]) {
    return OutputListOfUserEntity(this, entopts);
  }


  // Entity access: `client.OutputProvideCredential().list()` / `client.OutputProvideCredential().load({'id': ...})`.
  OutputProvideCredentialEntity OutputProvideCredential([dynamic entopts]) {
    return OutputProvideCredentialEntity(this, entopts);
  }


  // Entity access: `client.OutputRegisterUser().list()` / `client.OutputRegisterUser().load({'id': ...})`.
  OutputRegisterUserEntity OutputRegisterUser([dynamic entopts]) {
    return OutputRegisterUserEntity(this, entopts);
  }


  // Entity access: `client.OutputRemoveRole().list()` / `client.OutputRemoveRole().load({'id': ...})`.
  OutputRemoveRoleEntity OutputRemoveRole([dynamic entopts]) {
    return OutputRemoveRoleEntity(this, entopts);
  }


  // Entity access: `client.OutputResendLink().list()` / `client.OutputResendLink().load({'id': ...})`.
  OutputResendLinkEntity OutputResendLink([dynamic entopts]) {
    return OutputResendLinkEntity(this, entopts);
  }


  // Entity access: `client.OutputResetPassword().list()` / `client.OutputResetPassword().load({'id': ...})`.
  OutputResetPasswordEntity OutputResetPassword([dynamic entopts]) {
    return OutputResetPasswordEntity(this, entopts);
  }


  // Entity access: `client.OutputUpdateConsumer().list()` / `client.OutputUpdateConsumer().load({'id': ...})`.
  OutputUpdateConsumerEntity OutputUpdateConsumer([dynamic entopts]) {
    return OutputUpdateConsumerEntity(this, entopts);
  }


  // Entity access: `client.OutputUpdateProfile().list()` / `client.OutputUpdateProfile().load({'id': ...})`.
  OutputUpdateProfileEntity OutputUpdateProfile([dynamic entopts]) {
    return OutputUpdateProfileEntity(this, entopts);
  }


  // Entity access: `client.Version().list()` / `client.Version().load({'id': ...})`.
  VersionEntity Version([dynamic entopts]) {
    return VersionEntity(this, entopts);
  }



  static BluefinTecsUserBackofficeSDK test([dynamic testoptsarg, dynamic sdkoptsarg]) {
    final struct = stdutil.struct;
    final setpath = struct.setpath;
    final getdef = struct.getdef;
    final clone = struct.clone;
    final setprop = struct.setprop;

    final sdkopts = getdef(clone(sdkoptsarg), {});
    final testopts = getdef(clone(testoptsarg), {});
    setprop(testopts, 'active', true);
    setpath(sdkopts, 'feature.test', testopts);

    final testsdk = BluefinTecsUserBackofficeSDK(sdkopts);
    testsdk.mode = 'test';

    return testsdk;
  }

  BluefinTecsUserBackofficeSDK tester([dynamic testopts, dynamic sdkopts]) {
    return BluefinTecsUserBackofficeSDK.test(testopts, sdkopts);
  }

  Map<String, dynamic> toJSON() {
    return {'name': 'BluefinTecsUserBackoffice'};
  }

  @override
  String toString() {
    return 'BluefinTecsUserBackoffice ' + _utility.struct.jsonify(toJSON());
  }
}

typedef SDK = BluefinTecsUserBackofficeSDK;
