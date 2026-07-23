<?php
declare(strict_types=1);

// BluefinTecsUserBackoffice SDK utility registration

require_once __DIR__ . '/../core/UtilityType.php';
require_once __DIR__ . '/Clean.php';
require_once __DIR__ . '/Done.php';
require_once __DIR__ . '/MakeError.php';
require_once __DIR__ . '/FeatureAdd.php';
require_once __DIR__ . '/FeatureHook.php';
require_once __DIR__ . '/FeatureInit.php';
require_once __DIR__ . '/Fetcher.php';
require_once __DIR__ . '/MakeFetchDef.php';
require_once __DIR__ . '/MakeContext.php';
require_once __DIR__ . '/MakeOptions.php';
require_once __DIR__ . '/MakeRequest.php';
require_once __DIR__ . '/MakeResponse.php';
require_once __DIR__ . '/MakeResult.php';
require_once __DIR__ . '/MakePoint.php';
require_once __DIR__ . '/MakeSpec.php';
require_once __DIR__ . '/MakeUrl.php';
require_once __DIR__ . '/Param.php';
require_once __DIR__ . '/PrepareAuth.php';
require_once __DIR__ . '/PrepareBody.php';
require_once __DIR__ . '/PrepareHeaders.php';
require_once __DIR__ . '/PrepareMethod.php';
require_once __DIR__ . '/PrepareParams.php';
require_once __DIR__ . '/PreparePath.php';
require_once __DIR__ . '/PrepareQuery.php';
require_once __DIR__ . '/ResultBasic.php';
require_once __DIR__ . '/ResultBody.php';
require_once __DIR__ . '/ResultHeaders.php';
require_once __DIR__ . '/TransformRequest.php';
require_once __DIR__ . '/TransformResponse.php';

BluefinTecsUserBackofficeUtility::setRegistrar(function (BluefinTecsUserBackofficeUtility $u): void {
    $u->clean = [BluefinTecsUserBackofficeClean::class, 'call'];
    $u->done = [BluefinTecsUserBackofficeDone::class, 'call'];
    $u->make_error = [BluefinTecsUserBackofficeMakeError::class, 'call'];
    $u->feature_add = [BluefinTecsUserBackofficeFeatureAdd::class, 'call'];
    $u->feature_hook = [BluefinTecsUserBackofficeFeatureHook::class, 'call'];
    $u->feature_init = [BluefinTecsUserBackofficeFeatureInit::class, 'call'];
    $u->fetcher = [BluefinTecsUserBackofficeFetcher::class, 'call'];
    $u->make_fetch_def = [BluefinTecsUserBackofficeMakeFetchDef::class, 'call'];
    $u->make_context = [BluefinTecsUserBackofficeMakeContext::class, 'call'];
    $u->make_options = [BluefinTecsUserBackofficeMakeOptions::class, 'call'];
    $u->make_request = [BluefinTecsUserBackofficeMakeRequest::class, 'call'];
    $u->make_response = [BluefinTecsUserBackofficeMakeResponse::class, 'call'];
    $u->make_result = [BluefinTecsUserBackofficeMakeResult::class, 'call'];
    $u->make_point = [BluefinTecsUserBackofficeMakePoint::class, 'call'];
    $u->make_spec = [BluefinTecsUserBackofficeMakeSpec::class, 'call'];
    $u->make_url = [BluefinTecsUserBackofficeMakeUrl::class, 'call'];
    $u->param = [BluefinTecsUserBackofficeParam::class, 'call'];
    $u->prepare_auth = [BluefinTecsUserBackofficePrepareAuth::class, 'call'];
    $u->prepare_body = [BluefinTecsUserBackofficePrepareBody::class, 'call'];
    $u->prepare_headers = [BluefinTecsUserBackofficePrepareHeaders::class, 'call'];
    $u->prepare_method = [BluefinTecsUserBackofficePrepareMethod::class, 'call'];
    $u->prepare_params = [BluefinTecsUserBackofficePrepareParams::class, 'call'];
    $u->prepare_path = [BluefinTecsUserBackofficePreparePath::class, 'call'];
    $u->prepare_query = [BluefinTecsUserBackofficePrepareQuery::class, 'call'];
    $u->result_basic = [BluefinTecsUserBackofficeResultBasic::class, 'call'];
    $u->result_body = [BluefinTecsUserBackofficeResultBody::class, 'call'];
    $u->result_headers = [BluefinTecsUserBackofficeResultHeaders::class, 'call'];
    $u->transform_request = [BluefinTecsUserBackofficeTransformRequest::class, 'call'];
    $u->transform_response = [BluefinTecsUserBackofficeTransformResponse::class, 'call'];
});
