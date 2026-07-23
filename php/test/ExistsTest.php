<?php
declare(strict_types=1);

// BluefinTecsUserBackoffice SDK exists test

require_once __DIR__ . '/../bluefintecsuserbackoffice_sdk.php';

use PHPUnit\Framework\TestCase;

class ExistsTest extends TestCase
{
    public function test_create_test_sdk(): void
    {
        $testsdk = BluefinTecsUserBackofficeSDK::test(null, null);
        $this->assertNotNull($testsdk);
    }
}
