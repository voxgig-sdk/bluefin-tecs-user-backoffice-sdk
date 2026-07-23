<?php
declare(strict_types=1);

// BluefinTecsUserBackoffice SDK utility: make_context

require_once __DIR__ . '/../core/Context.php';

class BluefinTecsUserBackofficeMakeContext
{
    public static function call(array $ctxmap, ?BluefinTecsUserBackofficeContext $basectx): BluefinTecsUserBackofficeContext
    {
        return new BluefinTecsUserBackofficeContext($ctxmap, $basectx);
    }
}
