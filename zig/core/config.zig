// Generated API configuration (mirrors go/rust core/config).

const std = @import("std");
const h = @import("helpers.zig");
const types = @import("types.zig");
const Value = h.Value;
const Feature = types.Feature;

pub fn make_config() Value {
    return h.jo(&.{
        .{ "main", h.jo(&.{
            .{ "name", h.vstr("BluefinTecsUserBackoffice") },
            .{ "slug", h.vstr("bluefin-tecs-user-backoffice") },
            .{ "version", h.vstr("0.1.1") },
            .{ "target", h.vstr("zig") },
        }) },
        .{ "feature", h.jo(&.{
            .{ "audit", h.jo(&.{
                .{ "options", h.jo(&.{
                    .{ "active", h.vbool(false) },
                    .{ "actor", h.vstr("anonymous") },
                    .{ "max", h.vnum(1000) },
                }) },
                .{ "optspec", h.jo(&.{
                    .{ "now", h.vstr("`$FUNCTION`") },
                    .{ "sink", h.vstr("`$FUNCTION`") },
                }) },
                .{ "strict", h.vbool(false) },
                .{ "transport", h.vstr("none") },
            }) },
            .{ "clienttrack", h.jo(&.{
                .{ "options", h.jo(&.{
                    .{ "active", h.vbool(false) },
                    .{ "clientVersion", h.vstr("0.0.1") },
                }) },
                .{ "optspec", h.jo(&.{
                    .{ "clientName", h.vstr("`$STRING`") },
                    .{ "clientVersion", h.vstr("`$STRING`") },
                    .{ "headers", h.vstr("`$MAP`") },
                    .{ "idgen", h.vstr("`$FUNCTION`") },
                    .{ "sessionId", h.vstr("`$STRING`") },
                }) },
                .{ "strict", h.vbool(false) },
                .{ "transport", h.vstr("none") },
            }) },
            .{ "debug", h.jo(&.{
                .{ "options", h.jo(&.{
                    .{ "active", h.vbool(false) },
                    .{ "max", h.vnum(100) },
                    .{ "redact", h.ja(&.{
                        h.vstr("authorization"),
                        h.vstr("cookie"),
                        h.vstr("set-cookie"),
                        h.vstr("api-key"),
                        h.vstr("apikey"),
                        h.vstr("x-api-key"),
                        h.vstr("idempotency-key"),
                    }) },
                }) },
                .{ "optspec", h.jo(&.{
                    .{ "now", h.vstr("`$FUNCTION`") },
                    .{ "onEntry", h.vstr("`$FUNCTION`") },
                }) },
                .{ "strict", h.vbool(false) },
                .{ "transport", h.vstr("none") },
            }) },
            .{ "idempotency", h.jo(&.{
                .{ "options", h.jo(&.{
                    .{ "active", h.vbool(false) },
                    .{ "header", h.vstr("Idempotency-Key") },
                    .{ "methods", h.ja(&.{
                        h.vstr("POST"),
                        h.vstr("PUT"),
                        h.vstr("PATCH"),
                        h.vstr("DELETE"),
                    }) },
                    .{ "ops", h.ja(&.{
                        h.vstr("create"),
                        h.vstr("update"),
                        h.vstr("remove"),
                    }) },
                }) },
                .{ "optspec", h.jo(&.{
                    .{ "keygen", h.vstr("`$FUNCTION`") },
                }) },
                .{ "strict", h.vbool(false) },
                .{ "transport", h.vstr("none") },
            }) },
            .{ "log", h.jo(&.{
                .{ "options", h.jo(&.{
                    .{ "active", h.vbool(true) },
                }) },
                .{ "optspec", h.jo(&.{
                    .{ "level", h.vstr("`$STRING`") },
                    .{ "logger", h.vstr("`$ANY`") },
                }) },
                .{ "strict", h.vbool(false) },
                .{ "transport", h.vstr("none") },
            }) },
            .{ "metrics", h.jo(&.{
                .{ "options", h.jo(&.{
                    .{ "active", h.vbool(false) },
                }) },
                .{ "optspec", h.jo(&.{
                    .{ "now", h.vstr("`$FUNCTION`") },
                }) },
                .{ "strict", h.vbool(false) },
                .{ "transport", h.vstr("none") },
            }) },
            .{ "paging", h.jo(&.{
                .{ "options", h.jo(&.{
                    .{ "active", h.vbool(false) },
                    .{ "afterVar", h.vstr("after") },
                    .{ "cursorParam", h.vstr("cursor") },
                    .{ "firstVar", h.vstr("first") },
                    .{ "limitParam", h.vstr("limit") },
                    .{ "pageParam", h.vstr("page") },
                    .{ "startPage", h.vnum(1) },
                }) },
                .{ "optspec", h.jo(&.{
                    .{ "limit", h.vstr("`$NUMBER`") },
                    .{ "ops", h.vstr("`$LIST`") },
                }) },
                .{ "strict", h.vbool(false) },
                .{ "transport", h.vstr("none") },
            }) },
            .{ "ratelimit", h.jo(&.{
                .{ "options", h.jo(&.{
                    .{ "active", h.vbool(false) },
                    .{ "burst", h.vnum(5) },
                    .{ "rate", h.vnum(5) },
                }) },
                .{ "optspec", h.jo(&.{
                    .{ "now", h.vstr("`$FUNCTION`") },
                    .{ "sleep", h.vstr("`$FUNCTION`") },
                }) },
                .{ "strict", h.vbool(false) },
                .{ "transport", h.vstr("wrap") },
            }) },
            .{ "retry", h.jo(&.{
                .{ "options", h.jo(&.{
                    .{ "active", h.vbool(false) },
                    .{ "factor", h.vnum(2) },
                    .{ "maxDelay", h.vnum(2000) },
                    .{ "minDelay", h.vnum(50) },
                    .{ "retries", h.vnum(2) },
                    .{ "statuses", h.ja(&.{
                        h.vnum(408),
                        h.vnum(425),
                        h.vnum(429),
                        h.vnum(500),
                        h.vnum(502),
                        h.vnum(503),
                        h.vnum(504),
                    }) },
                }) },
                .{ "optspec", h.jo(&.{
                    .{ "jitter", h.vstr("`$BOOLEAN`") },
                    .{ "sleep", h.vstr("`$FUNCTION`") },
                }) },
                .{ "strict", h.vbool(false) },
                .{ "transport", h.vstr("wrap") },
            }) },
            .{ "telemetry", h.jo(&.{
                .{ "options", h.jo(&.{
                    .{ "active", h.vbool(false) },
                }) },
                .{ "optspec", h.jo(&.{
                    .{ "exporter", h.vstr("`$FUNCTION`") },
                    .{ "headers", h.vstr("`$MAP`") },
                    .{ "idgen", h.vstr("`$FUNCTION`") },
                    .{ "now", h.vstr("`$FUNCTION`") },
                }) },
                .{ "strict", h.vbool(false) },
                .{ "transport", h.vstr("none") },
            }) },
            .{ "test", h.jo(&.{
                .{ "options", h.jo(&.{
                    .{ "active", h.vbool(false) },
                }) },
                .{ "optspec", h.jo(&.{
                    .{ "entity", h.vstr("`$MAP`") },
                    .{ "net", h.vstr("`$MAP`") },
                }) },
                .{ "strict", h.vbool(false) },
                .{ "transport", h.vstr("base") },
            }) },
            .{ "timeout", h.jo(&.{
                .{ "options", h.jo(&.{
                    .{ "active", h.vbool(false) },
                    .{ "ms", h.vnum(30000) },
                }) },
                .{ "optspec", h.jo(&.{
                    .{ "clearTimer", h.vstr("`$FUNCTION`") },
                    .{ "setTimer", h.vstr("`$FUNCTION`") },
                }) },
                .{ "strict", h.vbool(false) },
                .{ "transport", h.vstr("wrap") },
            }) },
        }) },
        .{ "options", h.jo(&.{
            .{ "base", h.vstr("https://test.tecs.at/usermanagement-backofficews") },
            .{ "auth", h.jo(&.{
                .{ "prefix", h.vstr("Bearer") },
            }) },
            .{ "headers", h.jo(&.{
                .{ "content-type", h.vstr("application/json") },
            }) },
            .{ "entity", h.jo(&.{
                .{ "output_activate_digital_module", h.omap() },
                .{ "output_activate_portal_module", h.omap() },
                .{ "output_activate_store_module", h.omap() },
                .{ "output_activate_user", h.omap() },
                .{ "output_assign_role", h.omap() },
                .{ "output_change_logo", h.omap() },
                .{ "output_create_mandator", h.omap() },
                .{ "output_create_service_user", h.omap() },
                .{ "output_deactivate_user", h.omap() },
                .{ "output_get_kyc_document", h.omap() },
                .{ "output_get_logo", h.omap() },
                .{ "output_list_of_available_role", h.omap() },
                .{ "output_list_of_mandator", h.omap() },
                .{ "output_list_of_module", h.omap() },
                .{ "output_list_of_role_group", h.omap() },
                .{ "output_list_of_transactions_history", h.omap() },
                .{ "output_list_of_user", h.omap() },
                .{ "output_provide_credential", h.omap() },
                .{ "output_register_user", h.omap() },
                .{ "output_remove_role", h.omap() },
                .{ "output_resend_link", h.omap() },
                .{ "output_reset_password", h.omap() },
                .{ "output_update_consumer", h.omap() },
                .{ "output_update_profile", h.omap() },
                .{ "version", h.omap() },
            }) },
        }) },
        .{ "entity", h.jo(&.{
            .{ "output_activate_digital_module", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                }) },
                .{ "name", h.vstr("output_activate_digital_module") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/activateDigitalModule") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("activateDigitalModule") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("activateDigitalModule"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "type", h.vstr("`$STRING`") },
                                            .{ "kind", h.vstr("header") },
                                            .{ "reqd", h.vbool(true) },
                                        }),
                                    }) },
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "output_activate_portal_module", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("clientSecret") },
                        .{ "title", h.vstr("Client Secret") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("notificationEmail") },
                        .{ "title", h.vstr("Notification Email") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                }) },
                .{ "name", h.vstr("output_activate_portal_module") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/activateMerchantPortalModule") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("activateMerchantPortalModule") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("activateMerchantPortalModule"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "type", h.vstr("`$STRING`") },
                                            .{ "kind", h.vstr("header") },
                                            .{ "reqd", h.vbool(true) },
                                        }),
                                    }) },
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "output_activate_store_module", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                }) },
                .{ "name", h.vstr("output_activate_store_module") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/activateAppStoreModule") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("activateAppStoreModule") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("activateAppStoreModule"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "type", h.vstr("`$STRING`") },
                                            .{ "kind", h.vstr("header") },
                                            .{ "reqd", h.vbool(true) },
                                        }),
                                    }) },
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "output_activate_user", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("consumerUUID") },
                        .{ "title", h.vstr("Consumer Uuid") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                }) },
                .{ "name", h.vstr("output_activate_user") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/activateUser") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("activateUser") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("activateUser"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "type", h.vstr("`$STRING`") },
                                            .{ "kind", h.vstr("header") },
                                            .{ "reqd", h.vbool(true) },
                                        }),
                                    }) },
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "output_assign_role", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("consumerUUID") },
                        .{ "title", h.vstr("Consumer Uuid") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                        .{ "short", h.vstr("Unique identifier of the consumer (user) to whom the role(s) will be assigned.") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "short", h.vstr("Response code: 0 indicates success; any non-zero value indicates an error.") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("A human-readable message providing additional details about the outcome.") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("roles") },
                        .{ "title", h.vstr("Roles") },
                        .{ "type", h.vstr("`$ARRAY`") },
                        .{ "req", h.vbool(true) },
                        .{ "short", h.vstr("List of roles to assign to the consumer.") },
                    }),
                }) },
                .{ "name", h.vstr("output_assign_role") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/assignRoles") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("assignRoles") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("assignRoles"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "type", h.vstr("`$STRING`") },
                                            .{ "kind", h.vstr("header") },
                                            .{ "reqd", h.vbool(true) },
                                        }),
                                    }) },
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "output_change_logo", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("contentAsBase64") },
                        .{ "title", h.vstr("Content As Base64") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                        .{ "short", h.vstr("The content of the image as base64 encoded string") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("mimeType") },
                        .{ "title", h.vstr("Mime Type") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                        .{ "short", h.vstr("The MIME type of the image") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                }) },
                .{ "name", h.vstr("output_change_logo") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/changeLogo") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("changeLogo") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("changeLogo"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "type", h.vstr("`$STRING`") },
                                            .{ "kind", h.vstr("header") },
                                            .{ "reqd", h.vbool(true) },
                                        }),
                                    }) },
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "output_create_mandator", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("city") },
                        .{ "title", h.vstr("City") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("country") },
                        .{ "title", h.vstr("Country") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("dateOfBirth") },
                        .{ "title", h.vstr("Date Of Birth") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("description") },
                        .{ "title", h.vstr("Description") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "op", h.jo(&.{
                            .{ "create", h.jo(&.{
                                .{ "req", h.vbool(true) },
                                .{ "type", h.vstr("`$STRING`") },
                            }) },
                        }) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("driversLicenseNumber") },
                        .{ "title", h.vstr("Drivers License Number") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("email") },
                        .{ "title", h.vstr("Email") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("firstName") },
                        .{ "title", h.vstr("First Name") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("identificationNumber") },
                        .{ "title", h.vstr("Identification Number") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("lastName") },
                        .{ "title", h.vstr("Last Name") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("login") },
                        .{ "title", h.vstr("Login") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("name") },
                        .{ "title", h.vstr("Name") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "op", h.jo(&.{
                            .{ "create", h.jo(&.{
                                .{ "req", h.vbool(true) },
                                .{ "type", h.vstr("`$STRING`") },
                            }) },
                        }) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("passportNumber") },
                        .{ "title", h.vstr("Passport Number") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("phone") },
                        .{ "title", h.vstr("Phone") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("salutation") },
                        .{ "title", h.vstr("Salutation") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("state") },
                        .{ "title", h.vstr("State") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("street1") },
                        .{ "title", h.vstr("Street1") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("street2") },
                        .{ "title", h.vstr("Street2") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("zipCode") },
                        .{ "title", h.vstr("Zip Code") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                }) },
                .{ "name", h.vstr("output_create_mandator") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/createMandator") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("createMandator") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("createMandator"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body.mandator`") },
                                }) },
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "type", h.vstr("`$STRING`") },
                                            .{ "kind", h.vstr("header") },
                                            .{ "reqd", h.vbool(true) },
                                        }),
                                    }) },
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "output_create_service_user", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("mandatorName") },
                        .{ "title", h.vstr("Mandator Name") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                }) },
                .{ "name", h.vstr("output_create_service_user") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/createServiceUser") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("createServiceUser") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("createServiceUser"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "type", h.vstr("`$STRING`") },
                                            .{ "kind", h.vstr("header") },
                                            .{ "reqd", h.vbool(true) },
                                        }),
                                    }) },
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "output_deactivate_user", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("consumerUUID") },
                        .{ "title", h.vstr("Consumer Uuid") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                }) },
                .{ "name", h.vstr("output_deactivate_user") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/deactivateUser") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("deactivateUser") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("deactivateUser"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "type", h.vstr("`$STRING`") },
                                            .{ "kind", h.vstr("header") },
                                            .{ "reqd", h.vbool(true) },
                                        }),
                                    }) },
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "output_get_kyc_document", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("caseID") },
                        .{ "title", h.vstr("Case Id") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("encodedDataBase64") },
                        .{ "title", h.vstr("Encoded Data Base64") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                }) },
                .{ "name", h.vstr("output_get_kyc_document") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/getKycDocument") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("getKycDocument") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("getKycDocument"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "type", h.vstr("`$STRING`") },
                                            .{ "kind", h.vstr("header") },
                                            .{ "reqd", h.vbool(true) },
                                        }),
                                    }) },
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "output_get_logo", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("contentAsBase64") },
                        .{ "title", h.vstr("Content As Base64") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                        .{ "short", h.vstr("The content of the image as base64 encoded string") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("mimeType") },
                        .{ "title", h.vstr("Mime Type") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                        .{ "short", h.vstr("The MIME type of the image") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                }) },
                .{ "name", h.vstr("output_get_logo") },
                .{ "op", h.jo(&.{
                    .{ "load", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("load") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("GET") },
                                .{ "orig", h.vstr("/getLogo") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("getLogo") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("getLogo"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "type", h.vstr("`$STRING`") },
                                            .{ "kind", h.vstr("header") },
                                            .{ "reqd", h.vbool(true) },
                                        }),
                                    }) },
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "output_list_of_available_role", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("availableRoles") },
                        .{ "title", h.vstr("Available Roles") },
                        .{ "type", h.vstr("`$ARRAY`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                }) },
                .{ "name", h.vstr("output_list_of_available_role") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/listOfAvailableRoles") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("listOfAvailableRoles") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("listOfAvailableRoles"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "type", h.vstr("`$STRING`") },
                                            .{ "kind", h.vstr("header") },
                                            .{ "reqd", h.vbool(true) },
                                        }),
                                    }) },
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "output_list_of_mandator", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("filter") },
                        .{ "title", h.vstr("Filter") },
                        .{ "type", h.vstr("`$OBJECT`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("list") },
                        .{ "title", h.vstr("List") },
                        .{ "type", h.vstr("`$ARRAY`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("pagination") },
                        .{ "title", h.vstr("Pagination") },
                        .{ "type", h.vstr("`$OBJECT`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("sorting") },
                        .{ "title", h.vstr("Sorting") },
                        .{ "type", h.vstr("`$OBJECT`") },
                    }),
                }) },
                .{ "name", h.vstr("output_list_of_mandator") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/listOfMandators") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("listOfMandators") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("listOfMandators"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "type", h.vstr("`$STRING`") },
                                            .{ "kind", h.vstr("header") },
                                            .{ "reqd", h.vbool(true) },
                                        }),
                                    }) },
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "output_list_of_module", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("list") },
                        .{ "title", h.vstr("List") },
                        .{ "type", h.vstr("`$ARRAY`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("pagination") },
                        .{ "title", h.vstr("Pagination") },
                        .{ "type", h.vstr("`$OBJECT`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                }) },
                .{ "name", h.vstr("output_list_of_module") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/listOfModules") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("listOfModules") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("listOfModules"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "type", h.vstr("`$STRING`") },
                                            .{ "kind", h.vstr("header") },
                                            .{ "reqd", h.vbool(true) },
                                        }),
                                    }) },
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "output_list_of_role_group", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("filter") },
                        .{ "title", h.vstr("Filter") },
                        .{ "type", h.vstr("`$OBJECT`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("groupRoles") },
                        .{ "title", h.vstr("Group Roles") },
                        .{ "type", h.vstr("`$ARRAY`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("pagination") },
                        .{ "title", h.vstr("Pagination") },
                        .{ "type", h.vstr("`$OBJECT`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("sorting") },
                        .{ "title", h.vstr("Sorting") },
                        .{ "type", h.vstr("`$OBJECT`") },
                    }),
                }) },
                .{ "name", h.vstr("output_list_of_role_group") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/listOfRoleGroups") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("listOfRoleGroups") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("listOfRoleGroups"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "type", h.vstr("`$STRING`") },
                                            .{ "kind", h.vstr("header") },
                                            .{ "reqd", h.vbool(true) },
                                        }),
                                    }) },
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "output_list_of_transactions_history", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("filter") },
                        .{ "title", h.vstr("Filter") },
                        .{ "type", h.vstr("`$OBJECT`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("list") },
                        .{ "title", h.vstr("List") },
                        .{ "type", h.vstr("`$ARRAY`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("pagination") },
                        .{ "title", h.vstr("Pagination") },
                        .{ "type", h.vstr("`$OBJECT`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("sorting") },
                        .{ "title", h.vstr("Sorting") },
                        .{ "type", h.vstr("`$OBJECT`") },
                    }),
                }) },
                .{ "name", h.vstr("output_list_of_transactions_history") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/listOfTransactionsHistory") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("listOfTransactionsHistory") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("listOfTransactionsHistory"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "type", h.vstr("`$STRING`") },
                                            .{ "kind", h.vstr("header") },
                                            .{ "reqd", h.vbool(true) },
                                        }),
                                    }) },
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "output_list_of_user", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("filter") },
                        .{ "title", h.vstr("Filter") },
                        .{ "type", h.vstr("`$OBJECT`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("list") },
                        .{ "title", h.vstr("List") },
                        .{ "type", h.vstr("`$ARRAY`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("pagination") },
                        .{ "title", h.vstr("Pagination") },
                        .{ "type", h.vstr("`$OBJECT`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("sorting") },
                        .{ "title", h.vstr("Sorting") },
                        .{ "type", h.vstr("`$OBJECT`") },
                    }),
                }) },
                .{ "name", h.vstr("output_list_of_user") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/listOfUsers") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("listOfUsers") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("listOfUsers"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "type", h.vstr("`$STRING`") },
                                            .{ "kind", h.vstr("header") },
                                            .{ "reqd", h.vbool(true) },
                                        }),
                                    }) },
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "output_provide_credential", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("mandatorName") },
                        .{ "title", h.vstr("Mandator Name") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("password") },
                        .{ "title", h.vstr("Password") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("username") },
                        .{ "title", h.vstr("Username") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                }) },
                .{ "name", h.vstr("output_provide_credential") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/provideCredentials") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("provideCredentials") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("provideCredentials"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "type", h.vstr("`$STRING`") },
                                            .{ "kind", h.vstr("header") },
                                            .{ "reqd", h.vbool(true) },
                                        }),
                                    }) },
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "output_register_user", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("city") },
                        .{ "title", h.vstr("City") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("City where the user resides.") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("consumerId") },
                        .{ "title", h.vstr("Consumer Id") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("User login or unique user identifier.") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("consumerLanguage") },
                        .{ "title", h.vstr("Consumer Language") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("Preferred language for the user (e.g., 'en').") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("country") },
                        .{ "title", h.vstr("Country") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("User's country.") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("dateOfBirth") },
                        .{ "title", h.vstr("Date Of Birth") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("User's date of birth (expected format: dd.MM.yyyy).") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("driverLicenceNumber") },
                        .{ "title", h.vstr("Driver Licence Number") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("User's driver's license number.") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("email") },
                        .{ "title", h.vstr("Email") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                        .{ "short", h.vstr("User's email address (must be unique).") },
                        .{ "format", h.vstr("email") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("firstName") },
                        .{ "title", h.vstr("First Name") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("User's first name.") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("identificationNumber") },
                        .{ "title", h.vstr("Identification Number") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("User's identification number.") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("lastName") },
                        .{ "title", h.vstr("Last Name") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("User's last name.") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("login") },
                        .{ "title", h.vstr("Login") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("User login identifier (should be unique).") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("module") },
                        .{ "title", h.vstr("Module") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("Module identifier (if applicable).") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("passportNumber") },
                        .{ "title", h.vstr("Passport Number") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("User's passport number.") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("phone") },
                        .{ "title", h.vstr("Phone") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("User's phone number.") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "short", h.vstr("Response code (0 indicates success; non-zero indicates an error).") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("Human-readable response message.") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("salutation") },
                        .{ "title", h.vstr("Salutation") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("User's salutation (e.g., Mr., Ms.).") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("state") },
                        .{ "title", h.vstr("State") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("User's state or region.") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("street1") },
                        .{ "title", h.vstr("Street1") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("Primary address line.") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("street2") },
                        .{ "title", h.vstr("Street2") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("Secondary address line.") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("zip") },
                        .{ "title", h.vstr("Zip") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "short", h.vstr("Postal code.") },
                    }),
                }) },
                .{ "name", h.vstr("output_register_user") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/registerUser") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("registerUser") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("registerUser"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "type", h.vstr("`$STRING`") },
                                            .{ "kind", h.vstr("header") },
                                            .{ "reqd", h.vbool(true) },
                                        }),
                                    }) },
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "output_remove_role", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("consumerUUID") },
                        .{ "title", h.vstr("Consumer Uuid") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("roles") },
                        .{ "title", h.vstr("Roles") },
                        .{ "type", h.vstr("`$ARRAY`") },
                    }),
                }) },
                .{ "name", h.vstr("output_remove_role") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/removeRoles") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("removeRoles") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("removeRoles"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "type", h.vstr("`$STRING`") },
                                            .{ "kind", h.vstr("header") },
                                            .{ "reqd", h.vbool(true) },
                                        }),
                                    }) },
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "output_resend_link", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("businessRegistrationNumber") },
                        .{ "title", h.vstr("Business Registration Number") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("consumerUUID") },
                        .{ "title", h.vstr("Consumer Uuid") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("emailConfirmationCode") },
                        .{ "title", h.vstr("Email Confirmation Code") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("phoneNumber") },
                        .{ "title", h.vstr("Phone Number") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                }) },
                .{ "name", h.vstr("output_resend_link") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/resendLink") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("resendLink") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("resendLink"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "type", h.vstr("`$STRING`") },
                                            .{ "kind", h.vstr("header") },
                                        }),
                                    }) },
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "output_reset_password", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("consumerUuid") },
                        .{ "title", h.vstr("Consumer Uuid") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("phoneNumber") },
                        .{ "title", h.vstr("Phone Number") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                }) },
                .{ "name", h.vstr("output_reset_password") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/resetPassword") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("resetPassword") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("resetPassword"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "type", h.vstr("`$STRING`") },
                                            .{ "kind", h.vstr("header") },
                                            .{ "reqd", h.vbool(true) },
                                        }),
                                    }) },
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "output_update_consumer", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("city") },
                        .{ "title", h.vstr("City") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("consumerUuid") },
                        .{ "title", h.vstr("Consumer Uuid") },
                        .{ "type", h.vstr("`$STRING`") },
                        .{ "req", h.vbool(true) },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("consumerlanguage") },
                        .{ "title", h.vstr("Consumerlanguage") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("country") },
                        .{ "title", h.vstr("Country") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("dateOfBirth") },
                        .{ "title", h.vstr("Date Of Birth") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("datetime_created") },
                        .{ "title", h.vstr("Datetime Created") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("driverLicenceNumber") },
                        .{ "title", h.vstr("Driver Licence Number") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("email") },
                        .{ "title", h.vstr("Email") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("firstName") },
                        .{ "title", h.vstr("First Name") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("identificationNumber") },
                        .{ "title", h.vstr("Identification Number") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("kycPassed") },
                        .{ "title", h.vstr("Kyc Passed") },
                        .{ "type", h.vstr("`$BOOLEAN`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("lastName") },
                        .{ "title", h.vstr("Last Name") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("nationality") },
                        .{ "title", h.vstr("Nationality") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("passportNumber") },
                        .{ "title", h.vstr("Passport Number") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("phoneNumber") },
                        .{ "title", h.vstr("Phone Number") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("placeOfBirth") },
                        .{ "title", h.vstr("Place Of Birth") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("state") },
                        .{ "title", h.vstr("State") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("street1") },
                        .{ "title", h.vstr("Street1") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("street2") },
                        .{ "title", h.vstr("Street2") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionhistory_id") },
                        .{ "title", h.vstr("Transactionhistory Id") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("zip") },
                        .{ "title", h.vstr("Zip") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                }) },
                .{ "name", h.vstr("output_update_consumer") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/updateConsumer") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("updateConsumer") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("updateConsumer"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "type", h.vstr("`$STRING`") },
                                            .{ "kind", h.vstr("header") },
                                        }),
                                    }) },
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "output_update_profile", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("consumerLanguage") },
                        .{ "title", h.vstr("Consumer Language") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("email") },
                        .{ "title", h.vstr("Email") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("firstName") },
                        .{ "title", h.vstr("First Name") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("lastName") },
                        .{ "title", h.vstr("Last Name") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("phoneNumber") },
                        .{ "title", h.vstr("Phone Number") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "title", h.vstr("Response Code") },
                        .{ "type", h.vstr("`$INTEGER`") },
                        .{ "format", h.vstr("int32") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "title", h.vstr("Response Message") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                }) },
                .{ "name", h.vstr("output_update_profile") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/updateProfile") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("updateProfile") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("updateProfile"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "type", h.vstr("`$STRING`") },
                                            .{ "kind", h.vstr("header") },
                                        }),
                                    }) },
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
            .{ "version", h.jo(&.{
                .{ "fields", h.ja(&.{
                    h.jo(&.{
                        .{ "name", h.vstr("appName") },
                        .{ "title", h.vstr("App Name") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("buildDate") },
                        .{ "title", h.vstr("Build Date") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("version") },
                        .{ "title", h.vstr("Version") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                }) },
                .{ "name", h.vstr("version") },
                .{ "op", h.jo(&.{
                    .{ "load", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("load") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("GET") },
                                .{ "orig", h.vstr("/version") },
                                .{ "segments", h.ja(&.{
                                    h.jo(&.{
                                        .{ "lit", h.vstr("version") },
                                    }),
                                }) },
                                .{ "parts", h.ja(&.{
                                    h.vstr("version"),
                                }) },
                                .{ "rename", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
                                .{ "args", h.omap() },
                                .{ "select", h.omap() },
                            }),
                        }) },
                    }) },
                }) },
                .{ "relations", h.jo(&.{
                    .{ "ancestors", h.olist() },
                }) },
            }) },
        }) },
    });
}

// SHARED CONFIG (sdkgen rung L2).
//
// The SDK reads the config on every request and never writes to it, so one
// instance is shared by every client rather than rebuilt per client. Above the
// size threshold make_config re-parses the whole embedded JSON, so this is the
// difference between parsing the model once and once per client.
//
// Value nodes are arena-allocated and reference-stable, so the shared value is
// genuinely one structure, not a copy.
var shared_config_val: ?Value = null;

/// The process-wide config, built once on first use.
///
/// The returned Value SHARES its nodes: treat it as read-only. Callers that
/// need to mutate should use make_config, which always returns a fresh copy.
pub fn shared_config() Value {
    if (shared_config_val) |c| return c;
    const c = make_config();
    shared_config_val = c;
    return c;
}

pub fn make_feature(name: []const u8) Feature {
    if (std.mem.eql(u8, name, "audit")) return @import("../feature/audit.zig").AuditFeature.make();
    if (std.mem.eql(u8, name, "cache")) return @import("../feature/cache.zig").CacheFeature.make();
    if (std.mem.eql(u8, name, "clienttrack")) return @import("../feature/clienttrack.zig").ClienttrackFeature.make();
    if (std.mem.eql(u8, name, "cost")) return @import("../feature/cost.zig").CostFeature.make();
    if (std.mem.eql(u8, name, "debug")) return @import("../feature/debug.zig").DebugFeature.make();
    if (std.mem.eql(u8, name, "idempotency")) return @import("../feature/idempotency.zig").IdempotencyFeature.make();
    if (std.mem.eql(u8, name, "log")) return @import("../feature/log.zig").LogFeature.make();
    if (std.mem.eql(u8, name, "metrics")) return @import("../feature/metrics.zig").MetricsFeature.make();
    if (std.mem.eql(u8, name, "netsim")) return @import("../feature/netsim.zig").NetsimFeature.make();
    if (std.mem.eql(u8, name, "paging")) return @import("../feature/paging.zig").PagingFeature.make();
    if (std.mem.eql(u8, name, "proxy")) return @import("../feature/proxy.zig").ProxyFeature.make();
    if (std.mem.eql(u8, name, "ratelimit")) return @import("../feature/ratelimit.zig").RatelimitFeature.make();
    if (std.mem.eql(u8, name, "rbac")) return @import("../feature/rbac.zig").RbacFeature.make();
    if (std.mem.eql(u8, name, "retry")) return @import("../feature/retry.zig").RetryFeature.make();
    if (std.mem.eql(u8, name, "streaming")) return @import("../feature/streaming.zig").StreamingFeature.make();
    if (std.mem.eql(u8, name, "telemetry")) return @import("../feature/telemetry.zig").TelemetryFeature.make();
    if (std.mem.eql(u8, name, "test")) return @import("../feature/test.zig").TestFeature.make();
    if (std.mem.eql(u8, name, "timeout")) return @import("../feature/timeout.zig").TimeoutFeature.make();
    return @import("../feature/base.zig").BaseFeature.make();
}
