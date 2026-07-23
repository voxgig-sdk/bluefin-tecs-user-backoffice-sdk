<?php
declare(strict_types=1);

// BluefinTecsUserBackoffice SDK utility: result_headers

class BluefinTecsUserBackofficeResultHeaders
{
    public static function call(BluefinTecsUserBackofficeContext $ctx): ?BluefinTecsUserBackofficeResult
    {
        $response = $ctx->response;
        $result = $ctx->result;
        if ($result) {
            if ($response && is_array($response->headers)) {
                $result->headers = $response->headers;
            } else {
                $result->headers = [];
            }
        }
        return $result;
    }
}
