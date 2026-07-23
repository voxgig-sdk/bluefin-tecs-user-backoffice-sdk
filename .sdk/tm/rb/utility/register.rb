# BluefinTecsUserBackoffice SDK utility registration
require_relative '../core/utility_type'
require_relative 'clean'
require_relative 'done'
require_relative 'make_error'
require_relative 'feature_add'
require_relative 'feature_hook'
require_relative 'feature_init'
require_relative 'fetcher'
require_relative 'make_fetch_def'
require_relative 'make_context'
require_relative 'make_options'
require_relative 'make_request'
require_relative 'make_response'
require_relative 'make_result'
require_relative 'make_point'
require_relative 'make_spec'
require_relative 'make_url'
require_relative 'param'
require_relative 'prepare_auth'
require_relative 'prepare_body'
require_relative 'prepare_headers'
require_relative 'prepare_method'
require_relative 'prepare_params'
require_relative 'prepare_path'
require_relative 'prepare_query'
require_relative 'result_basic'
require_relative 'result_body'
require_relative 'result_headers'
require_relative 'transform_request'
require_relative 'transform_response'

BluefinTecsUserBackofficeUtility.registrar = ->(u) {
  u.clean = BluefinTecsUserBackofficeUtilities::Clean
  u.done = BluefinTecsUserBackofficeUtilities::Done
  u.make_error = BluefinTecsUserBackofficeUtilities::MakeError
  u.feature_add = BluefinTecsUserBackofficeUtilities::FeatureAdd
  u.feature_hook = BluefinTecsUserBackofficeUtilities::FeatureHook
  u.feature_init = BluefinTecsUserBackofficeUtilities::FeatureInit
  u.fetcher = BluefinTecsUserBackofficeUtilities::Fetcher
  u.make_fetch_def = BluefinTecsUserBackofficeUtilities::MakeFetchDef
  u.make_context = BluefinTecsUserBackofficeUtilities::MakeContext
  u.make_options = BluefinTecsUserBackofficeUtilities::MakeOptions
  u.make_request = BluefinTecsUserBackofficeUtilities::MakeRequest
  u.make_response = BluefinTecsUserBackofficeUtilities::MakeResponse
  u.make_result = BluefinTecsUserBackofficeUtilities::MakeResult
  u.make_point = BluefinTecsUserBackofficeUtilities::MakePoint
  u.make_spec = BluefinTecsUserBackofficeUtilities::MakeSpec
  u.make_url = BluefinTecsUserBackofficeUtilities::MakeUrl
  u.param = BluefinTecsUserBackofficeUtilities::Param
  u.prepare_auth = BluefinTecsUserBackofficeUtilities::PrepareAuth
  u.prepare_body = BluefinTecsUserBackofficeUtilities::PrepareBody
  u.prepare_headers = BluefinTecsUserBackofficeUtilities::PrepareHeaders
  u.prepare_method = BluefinTecsUserBackofficeUtilities::PrepareMethod
  u.prepare_params = BluefinTecsUserBackofficeUtilities::PrepareParams
  u.prepare_path = BluefinTecsUserBackofficeUtilities::PreparePath
  u.prepare_query = BluefinTecsUserBackofficeUtilities::PrepareQuery
  u.result_basic = BluefinTecsUserBackofficeUtilities::ResultBasic
  u.result_body = BluefinTecsUserBackofficeUtilities::ResultBody
  u.result_headers = BluefinTecsUserBackofficeUtilities::ResultHeaders
  u.transform_request = BluefinTecsUserBackofficeUtilities::TransformRequest
  u.transform_response = BluefinTecsUserBackofficeUtilities::TransformResponse
}
