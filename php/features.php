<?php
declare(strict_types=1);

// BluefinTecsUserBackoffice SDK feature factory

require_once __DIR__ . '/feature/BaseFeature.php';
require_once __DIR__ . '/feature/TestFeature.php';


class BluefinTecsUserBackofficeFeatures
{
    public static function make_feature(string $name)
    {
        switch ($name) {
            case "base":
                return new BluefinTecsUserBackofficeBaseFeature();
            case "test":
                return new BluefinTecsUserBackofficeTestFeature();
            default:
                return new BluefinTecsUserBackofficeBaseFeature();
        }
    }
}
