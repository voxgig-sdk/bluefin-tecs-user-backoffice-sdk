<?php
declare(strict_types=1);

// BluefinTecsUserBackoffice SDK base feature

class BluefinTecsUserBackofficeBaseFeature
{
    public string $version;
    public string $name;
    public bool $active;

    // Positions this feature when added via the client `extend` option:
    // "__before__" / "__after__" / "__replace__" name an already-added
    // feature (mirrors the ts feature `_options`). Declared so setting it
    // on an extension instance avoids the dynamic-property deprecation.
    public ?array $_options = null;

    public function __construct()
    {
        $this->version = '0.0.1';
        $this->name = 'base';
        $this->active = true;
    }

    public function get_version(): string { return $this->version; }
    public function get_name(): string { return $this->name; }
    public function get_active(): bool { return $this->active; }

    public function init(BluefinTecsUserBackofficeContext $ctx, array $options): void {}
    public function PostConstruct(BluefinTecsUserBackofficeContext $ctx): void {}
    public function PostConstructEntity(BluefinTecsUserBackofficeContext $ctx): void {}
    public function SetData(BluefinTecsUserBackofficeContext $ctx): void {}
    public function GetData(BluefinTecsUserBackofficeContext $ctx): void {}
    public function GetMatch(BluefinTecsUserBackofficeContext $ctx): void {}
    public function SetMatch(BluefinTecsUserBackofficeContext $ctx): void {}
    public function PrePoint(BluefinTecsUserBackofficeContext $ctx): void {}
    public function PreSpec(BluefinTecsUserBackofficeContext $ctx): void {}
    public function PreRequest(BluefinTecsUserBackofficeContext $ctx): void {}
    public function PreResponse(BluefinTecsUserBackofficeContext $ctx): void {}
    public function PreResult(BluefinTecsUserBackofficeContext $ctx): void {}
    public function PreDone(BluefinTecsUserBackofficeContext $ctx): void {}
    public function PreUnexpected(BluefinTecsUserBackofficeContext $ctx): void {}
}
