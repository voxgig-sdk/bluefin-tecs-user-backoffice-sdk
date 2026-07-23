<?php
declare(strict_types=1);

// BluefinTecsUserBackoffice SDK utility: result_body

class BluefinTecsUserBackofficeResultBody
{
    public static function call(BluefinTecsUserBackofficeContext $ctx): ?BluefinTecsUserBackofficeResult
    {
        $response = $ctx->response;
        $result = $ctx->result;
        if ($result && $response && $response->json_func && $response->body) {
            $result->body = ($response->json_func)();
        }
        return $result;
    }
}
