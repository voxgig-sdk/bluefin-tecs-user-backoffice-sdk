<?php
declare(strict_types=1);

// BluefinTecsUserBackoffice SDK utility: prepare_body

class BluefinTecsUserBackofficePrepareBody
{
    public static function call(BluefinTecsUserBackofficeContext $ctx): mixed
    {
        if ($ctx->op->input === 'data') {
            return ($ctx->utility->transform_request)($ctx);
        }
        return null;
    }
}
