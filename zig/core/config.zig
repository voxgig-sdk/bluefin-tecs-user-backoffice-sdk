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
            .{ "test", h.jo(&.{
                .{ "options", h.jo(&.{
                    .{ "active", h.vbool(false) },
                }) },
                .{ "transport", h.vstr("base") },
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
                        .{ "type", h.vstr("`$INTEGER`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
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
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "kind", h.vstr("header") },
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "reqd", h.vbool(true) },
                                            .{ "type", h.vstr("`$STRING`") },
                                        }),
                                    }) },
                                }) },
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/activateDigitalModule") },
                                .{ "parts", h.ja(&.{
                                    h.vstr("activateDigitalModule"),
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
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
                        .{ "req", h.vbool(true) },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("notificationEmail") },
                        .{ "req", h.vbool(true) },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "type", h.vstr("`$INTEGER`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
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
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "kind", h.vstr("header") },
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "reqd", h.vbool(true) },
                                            .{ "type", h.vstr("`$STRING`") },
                                        }),
                                    }) },
                                }) },
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/activateMerchantPortalModule") },
                                .{ "parts", h.ja(&.{
                                    h.vstr("activateMerchantPortalModule"),
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
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
                        .{ "type", h.vstr("`$INTEGER`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
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
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "kind", h.vstr("header") },
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "reqd", h.vbool(true) },
                                            .{ "type", h.vstr("`$STRING`") },
                                        }),
                                    }) },
                                }) },
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/activateAppStoreModule") },
                                .{ "parts", h.ja(&.{
                                    h.vstr("activateAppStoreModule"),
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
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
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "type", h.vstr("`$INTEGER`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
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
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "kind", h.vstr("header") },
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "reqd", h.vbool(true) },
                                            .{ "type", h.vstr("`$STRING`") },
                                        }),
                                    }) },
                                }) },
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/activateUser") },
                                .{ "parts", h.ja(&.{
                                    h.vstr("activateUser"),
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
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
                        .{ "req", h.vbool(true) },
                        .{ "short", h.vstr("Unique identifier of the consumer (user) to whom the role(s) will be assigned.") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "short", h.vstr("Response code: 0 indicates success; any non-zero value indicates an error.") },
                        .{ "type", h.vstr("`$INTEGER`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "short", h.vstr("A human-readable message providing additional details about the outcome.") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("roles") },
                        .{ "req", h.vbool(true) },
                        .{ "short", h.vstr("List of roles to assign to the consumer.") },
                        .{ "type", h.vstr("`$ARRAY`") },
                    }),
                }) },
                .{ "name", h.vstr("output_assign_role") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "kind", h.vstr("header") },
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "reqd", h.vbool(true) },
                                            .{ "type", h.vstr("`$STRING`") },
                                        }),
                                    }) },
                                }) },
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/assignRoles") },
                                .{ "parts", h.ja(&.{
                                    h.vstr("assignRoles"),
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
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
                        .{ "req", h.vbool(true) },
                        .{ "short", h.vstr("The content of the image as base64 encoded string") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("mimeType") },
                        .{ "req", h.vbool(true) },
                        .{ "short", h.vstr("The MIME type of the image") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "type", h.vstr("`$INTEGER`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
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
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "kind", h.vstr("header") },
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "reqd", h.vbool(true) },
                                            .{ "type", h.vstr("`$STRING`") },
                                        }),
                                    }) },
                                }) },
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/changeLogo") },
                                .{ "parts", h.ja(&.{
                                    h.vstr("changeLogo"),
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
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
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("country") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("dateOfBirth") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("description") },
                        .{ "op", h.jo(&.{
                            .{ "create", h.jo(&.{
                                .{ "req", h.vbool(true) },
                                .{ "type", h.vstr("`$STRING`") },
                            }) },
                        }) },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("driversLicenseNumber") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("email") },
                        .{ "req", h.vbool(true) },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("firstName") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("identificationNumber") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("lastName") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("login") },
                        .{ "req", h.vbool(true) },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("name") },
                        .{ "op", h.jo(&.{
                            .{ "create", h.jo(&.{
                                .{ "req", h.vbool(true) },
                                .{ "type", h.vstr("`$STRING`") },
                            }) },
                        }) },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("passportNumber") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("phone") },
                        .{ "req", h.vbool(true) },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("salutation") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("state") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("street1") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("street2") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("zipCode") },
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
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "kind", h.vstr("header") },
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "reqd", h.vbool(true) },
                                            .{ "type", h.vstr("`$STRING`") },
                                        }),
                                    }) },
                                }) },
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/createMandator") },
                                .{ "parts", h.ja(&.{
                                    h.vstr("createMandator"),
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body.mandator`") },
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
                        .{ "req", h.vbool(true) },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "type", h.vstr("`$INTEGER`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
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
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "kind", h.vstr("header") },
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "reqd", h.vbool(true) },
                                            .{ "type", h.vstr("`$STRING`") },
                                        }),
                                    }) },
                                }) },
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/createServiceUser") },
                                .{ "parts", h.ja(&.{
                                    h.vstr("createServiceUser"),
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
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
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "type", h.vstr("`$INTEGER`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
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
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "kind", h.vstr("header") },
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "reqd", h.vbool(true) },
                                            .{ "type", h.vstr("`$STRING`") },
                                        }),
                                    }) },
                                }) },
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/deactivateUser") },
                                .{ "parts", h.ja(&.{
                                    h.vstr("deactivateUser"),
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
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
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("encodedDataBase64") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "type", h.vstr("`$INTEGER`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
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
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "kind", h.vstr("header") },
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "reqd", h.vbool(true) },
                                            .{ "type", h.vstr("`$STRING`") },
                                        }),
                                    }) },
                                }) },
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/getKycDocument") },
                                .{ "parts", h.ja(&.{
                                    h.vstr("getKycDocument"),
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
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
                        .{ "req", h.vbool(true) },
                        .{ "short", h.vstr("The content of the image as base64 encoded string") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("mimeType") },
                        .{ "req", h.vbool(true) },
                        .{ "short", h.vstr("The MIME type of the image") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "type", h.vstr("`$INTEGER`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
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
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "kind", h.vstr("header") },
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "reqd", h.vbool(true) },
                                            .{ "type", h.vstr("`$STRING`") },
                                        }),
                                    }) },
                                }) },
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("GET") },
                                .{ "orig", h.vstr("/getLogo") },
                                .{ "parts", h.ja(&.{
                                    h.vstr("getLogo"),
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
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
                        .{ "type", h.vstr("`$ARRAY`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "type", h.vstr("`$INTEGER`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
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
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "kind", h.vstr("header") },
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "reqd", h.vbool(true) },
                                            .{ "type", h.vstr("`$STRING`") },
                                        }),
                                    }) },
                                }) },
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/listOfAvailableRoles") },
                                .{ "parts", h.ja(&.{
                                    h.vstr("listOfAvailableRoles"),
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
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
                        .{ "type", h.vstr("`$OBJECT`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("list") },
                        .{ "type", h.vstr("`$ARRAY`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("pagination") },
                        .{ "type", h.vstr("`$OBJECT`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "type", h.vstr("`$INTEGER`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("sorting") },
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
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "kind", h.vstr("header") },
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "reqd", h.vbool(true) },
                                            .{ "type", h.vstr("`$STRING`") },
                                        }),
                                    }) },
                                }) },
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/listOfMandators") },
                                .{ "parts", h.ja(&.{
                                    h.vstr("listOfMandators"),
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
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
                        .{ "type", h.vstr("`$ARRAY`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("pagination") },
                        .{ "type", h.vstr("`$OBJECT`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "type", h.vstr("`$INTEGER`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
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
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "kind", h.vstr("header") },
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "reqd", h.vbool(true) },
                                            .{ "type", h.vstr("`$STRING`") },
                                        }),
                                    }) },
                                }) },
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/listOfModules") },
                                .{ "parts", h.ja(&.{
                                    h.vstr("listOfModules"),
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
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
                        .{ "type", h.vstr("`$OBJECT`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("groupRoles") },
                        .{ "type", h.vstr("`$ARRAY`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("pagination") },
                        .{ "type", h.vstr("`$OBJECT`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "type", h.vstr("`$INTEGER`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("sorting") },
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
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "kind", h.vstr("header") },
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "reqd", h.vbool(true) },
                                            .{ "type", h.vstr("`$STRING`") },
                                        }),
                                    }) },
                                }) },
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/listOfRoleGroups") },
                                .{ "parts", h.ja(&.{
                                    h.vstr("listOfRoleGroups"),
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
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
                        .{ "type", h.vstr("`$OBJECT`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("list") },
                        .{ "type", h.vstr("`$ARRAY`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("pagination") },
                        .{ "type", h.vstr("`$OBJECT`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "type", h.vstr("`$INTEGER`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("sorting") },
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
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "kind", h.vstr("header") },
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "reqd", h.vbool(true) },
                                            .{ "type", h.vstr("`$STRING`") },
                                        }),
                                    }) },
                                }) },
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/listOfTransactionsHistory") },
                                .{ "parts", h.ja(&.{
                                    h.vstr("listOfTransactionsHistory"),
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
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
                        .{ "type", h.vstr("`$OBJECT`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("list") },
                        .{ "type", h.vstr("`$ARRAY`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("pagination") },
                        .{ "type", h.vstr("`$OBJECT`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "type", h.vstr("`$INTEGER`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("sorting") },
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
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "kind", h.vstr("header") },
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "reqd", h.vbool(true) },
                                            .{ "type", h.vstr("`$STRING`") },
                                        }),
                                    }) },
                                }) },
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/listOfUsers") },
                                .{ "parts", h.ja(&.{
                                    h.vstr("listOfUsers"),
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
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
                        .{ "req", h.vbool(true) },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("password") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "type", h.vstr("`$INTEGER`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("username") },
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
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "kind", h.vstr("header") },
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "reqd", h.vbool(true) },
                                            .{ "type", h.vstr("`$STRING`") },
                                        }),
                                    }) },
                                }) },
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/provideCredentials") },
                                .{ "parts", h.ja(&.{
                                    h.vstr("provideCredentials"),
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
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
                        .{ "short", h.vstr("City where the user resides.") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("consumerId") },
                        .{ "short", h.vstr("User login or unique user identifier.") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("consumerLanguage") },
                        .{ "short", h.vstr("Preferred language for the user (e.g., 'en').") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("country") },
                        .{ "short", h.vstr("User's country.") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("dateOfBirth") },
                        .{ "short", h.vstr("User's date of birth (expected format: dd.MM.yyyy).") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("driverLicenceNumber") },
                        .{ "short", h.vstr("User's driver's license number.") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("email") },
                        .{ "req", h.vbool(true) },
                        .{ "short", h.vstr("User's email address (must be unique).") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("firstName") },
                        .{ "short", h.vstr("User's first name.") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("identificationNumber") },
                        .{ "short", h.vstr("User's identification number.") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("lastName") },
                        .{ "short", h.vstr("User's last name.") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("login") },
                        .{ "short", h.vstr("User login identifier (should be unique).") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("module") },
                        .{ "short", h.vstr("Module identifier (if applicable).") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("passportNumber") },
                        .{ "short", h.vstr("User's passport number.") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("phone") },
                        .{ "short", h.vstr("User's phone number.") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "short", h.vstr("Response code (0 indicates success; non-zero indicates an error).") },
                        .{ "type", h.vstr("`$INTEGER`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "short", h.vstr("Human-readable response message.") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("salutation") },
                        .{ "short", h.vstr("User's salutation (e.g., Mr., Ms.).") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("state") },
                        .{ "short", h.vstr("User's state or region.") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("street1") },
                        .{ "short", h.vstr("Primary address line.") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("street2") },
                        .{ "short", h.vstr("Secondary address line.") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("zip") },
                        .{ "short", h.vstr("Postal code.") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                }) },
                .{ "name", h.vstr("output_register_user") },
                .{ "op", h.jo(&.{
                    .{ "create", h.jo(&.{
                        .{ "input", h.vstr("data") },
                        .{ "name", h.vstr("create") },
                        .{ "points", h.ja(&.{
                            h.jo(&.{
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "kind", h.vstr("header") },
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "reqd", h.vbool(true) },
                                            .{ "type", h.vstr("`$STRING`") },
                                        }),
                                    }) },
                                }) },
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/registerUser") },
                                .{ "parts", h.ja(&.{
                                    h.vstr("registerUser"),
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
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
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "type", h.vstr("`$INTEGER`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("roles") },
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
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "kind", h.vstr("header") },
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "reqd", h.vbool(true) },
                                            .{ "type", h.vstr("`$STRING`") },
                                        }),
                                    }) },
                                }) },
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/removeRoles") },
                                .{ "parts", h.ja(&.{
                                    h.vstr("removeRoles"),
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
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
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("consumerUUID") },
                        .{ "req", h.vbool(true) },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("emailConfirmationCode") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("phoneNumber") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "type", h.vstr("`$INTEGER`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
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
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "kind", h.vstr("header") },
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "type", h.vstr("`$STRING`") },
                                        }),
                                    }) },
                                }) },
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/resendLink") },
                                .{ "parts", h.ja(&.{
                                    h.vstr("resendLink"),
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
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
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("phoneNumber") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "type", h.vstr("`$INTEGER`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
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
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "kind", h.vstr("header") },
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "reqd", h.vbool(true) },
                                            .{ "type", h.vstr("`$STRING`") },
                                        }),
                                    }) },
                                }) },
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/resetPassword") },
                                .{ "parts", h.ja(&.{
                                    h.vstr("resetPassword"),
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
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
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("consumerUuid") },
                        .{ "req", h.vbool(true) },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("consumerlanguage") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("country") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("dateOfBirth") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("datetime_created") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("driverLicenceNumber") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("email") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("firstName") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("identificationNumber") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("kycPassed") },
                        .{ "type", h.vstr("`$BOOLEAN`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("lastName") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("nationality") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("passportNumber") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("phoneNumber") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("placeOfBirth") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "type", h.vstr("`$INTEGER`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("state") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("street1") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("street2") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("transactionhistory_id") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("zip") },
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
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "kind", h.vstr("header") },
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "type", h.vstr("`$STRING`") },
                                        }),
                                    }) },
                                }) },
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/updateConsumer") },
                                .{ "parts", h.ja(&.{
                                    h.vstr("updateConsumer"),
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
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
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("email") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("firstName") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("lastName") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("phoneNumber") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseCode") },
                        .{ "type", h.vstr("`$INTEGER`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("responseMessage") },
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
                                .{ "args", h.jo(&.{
                                    .{ "header", h.ja(&.{
                                        h.jo(&.{
                                            .{ "kind", h.vstr("header") },
                                            .{ "name", h.vstr("authorization") },
                                            .{ "orig", h.vstr("authorization") },
                                            .{ "type", h.vstr("`$STRING`") },
                                        }),
                                    }) },
                                }) },
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("POST") },
                                .{ "orig", h.vstr("/updateProfile") },
                                .{ "parts", h.ja(&.{
                                    h.vstr("updateProfile"),
                                }) },
                                .{ "select", h.jo(&.{
                                    .{ "exist", h.ja(&.{
                                        h.vstr("authorization"),
                                    }) },
                                }) },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
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
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("buildDate") },
                        .{ "type", h.vstr("`$STRING`") },
                    }),
                    h.jo(&.{
                        .{ "name", h.vstr("version") },
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
                                .{ "args", h.omap() },
                                .{ "kind", h.vstr("http") },
                                .{ "method", h.vstr("GET") },
                                .{ "orig", h.vstr("/version") },
                                .{ "parts", h.ja(&.{
                                    h.vstr("version"),
                                }) },
                                .{ "select", h.omap() },
                                .{ "transform", h.jo(&.{
                                    .{ "req", h.vstr("`reqdata`") },
                                    .{ "res", h.vstr("`body`") },
                                }) },
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
