package core

import (
	"sync"
)

// MakeConfig builds a fresh, fully materialised config map. Every call
// rebuilds the whole structure, so prefer SharedConfig unless you need a
// private copy you intend to mutate.
func MakeConfig() map[string]any {
	return map[string]any{
		"main": map[string]any{
			"name": "BluefinTecsUserBackoffice",
			"slug": "bluefin-tecs-user-backoffice",
			"version": "0.1.1",
			"target": "go",
		},
		"feature": map[string]any{
			"audit": map[string]any{
				"options": map[string]any{
					"active": false,
					"actor": "anonymous",
					"max": 1000,
				},
				"optspec": map[string]any{
					"now": "`$FUNCTION`",
					"sink": "`$FUNCTION`",
				},
				"strict": false,
				"transport": "none",
			},
			"clienttrack": map[string]any{
				"options": map[string]any{
					"active": false,
					"clientVersion": "0.0.1",
				},
				"optspec": map[string]any{
					"clientName": "`$STRING`",
					"clientVersion": "`$STRING`",
					"headers": "`$MAP`",
					"idgen": "`$FUNCTION`",
					"sessionId": "`$STRING`",
				},
				"strict": false,
				"transport": "none",
			},
			"debug": map[string]any{
				"options": map[string]any{
					"active": false,
					"max": 100,
					"redact": []any{
						"authorization",
						"cookie",
						"set-cookie",
						"api-key",
						"apikey",
						"x-api-key",
						"idempotency-key",
					},
				},
				"optspec": map[string]any{
					"now": "`$FUNCTION`",
					"onEntry": "`$FUNCTION`",
				},
				"strict": false,
				"transport": "none",
			},
			"idempotency": map[string]any{
				"options": map[string]any{
					"active": false,
					"header": "Idempotency-Key",
					"methods": []any{
						"POST",
						"PUT",
						"PATCH",
						"DELETE",
					},
					"ops": []any{
						"create",
						"update",
						"remove",
					},
				},
				"optspec": map[string]any{
					"keygen": "`$FUNCTION`",
				},
				"strict": false,
				"transport": "none",
			},
			"log": map[string]any{
				"options": map[string]any{
					"active": true,
				},
				"optspec": map[string]any{
					"level": "`$STRING`",
					"logger": "`$ANY`",
				},
				"strict": false,
				"transport": "none",
			},
			"metrics": map[string]any{
				"options": map[string]any{
					"active": false,
				},
				"optspec": map[string]any{
					"now": "`$FUNCTION`",
				},
				"strict": false,
				"transport": "none",
			},
			"paging": map[string]any{
				"options": map[string]any{
					"active": false,
					"afterVar": "after",
					"cursorParam": "cursor",
					"firstVar": "first",
					"limitParam": "limit",
					"pageParam": "page",
					"startPage": 1,
				},
				"optspec": map[string]any{
					"limit": "`$NUMBER`",
					"ops": "`$LIST`",
				},
				"strict": false,
				"transport": "none",
			},
			"ratelimit": map[string]any{
				"options": map[string]any{
					"active": false,
					"burst": 5,
					"rate": 5,
				},
				"optspec": map[string]any{
					"now": "`$FUNCTION`",
					"sleep": "`$FUNCTION`",
				},
				"strict": false,
				"transport": "wrap",
			},
			"retry": map[string]any{
				"options": map[string]any{
					"active": false,
					"factor": 2,
					"maxDelay": 2000,
					"minDelay": 50,
					"retries": 2,
					"statuses": []any{
						408,
						425,
						429,
						500,
						502,
						503,
						504,
					},
				},
				"optspec": map[string]any{
					"jitter": "`$BOOLEAN`",
					"sleep": "`$FUNCTION`",
				},
				"strict": false,
				"transport": "wrap",
			},
			"telemetry": map[string]any{
				"options": map[string]any{
					"active": false,
				},
				"optspec": map[string]any{
					"exporter": "`$FUNCTION`",
					"headers": "`$MAP`",
					"idgen": "`$FUNCTION`",
					"now": "`$FUNCTION`",
				},
				"strict": false,
				"transport": "none",
			},
			"test": map[string]any{
				"options": map[string]any{
					"active": false,
				},
				"optspec": map[string]any{
					"entity": "`$MAP`",
					"net": "`$MAP`",
				},
				"strict": false,
				"transport": "base",
			},
			"timeout": map[string]any{
				"options": map[string]any{
					"active": false,
					"ms": 30000,
				},
				"optspec": map[string]any{
					"clearTimer": "`$FUNCTION`",
					"setTimer": "`$FUNCTION`",
				},
				"strict": false,
				"transport": "wrap",
			},
		},
		"options": map[string]any{
			"base": "https://test.tecs.at/usermanagement-backofficews",
			"auth": map[string]any{
				"prefix": "Bearer",
			},
			"headers": map[string]any{
				"content-type": "application/json",
			},
			"entity": map[string]any{
				"output_activate_digital_module": map[string]any{},
				"output_activate_portal_module": map[string]any{},
				"output_activate_store_module": map[string]any{},
				"output_activate_user": map[string]any{},
				"output_assign_role": map[string]any{},
				"output_change_logo": map[string]any{},
				"output_create_mandator": map[string]any{},
				"output_create_service_user": map[string]any{},
				"output_deactivate_user": map[string]any{},
				"output_get_kyc_document": map[string]any{},
				"output_get_logo": map[string]any{},
				"output_list_of_available_role": map[string]any{},
				"output_list_of_mandator": map[string]any{},
				"output_list_of_module": map[string]any{},
				"output_list_of_role_group": map[string]any{},
				"output_list_of_transactions_history": map[string]any{},
				"output_list_of_user": map[string]any{},
				"output_provide_credential": map[string]any{},
				"output_register_user": map[string]any{},
				"output_remove_role": map[string]any{},
				"output_resend_link": map[string]any{},
				"output_reset_password": map[string]any{},
				"output_update_consumer": map[string]any{},
				"output_update_profile": map[string]any{},
				"version": map[string]any{},
			},
		},
		"entity": map[string]any{
			"output_activate_digital_module": map[string]any{
				"fields": []any{
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
				},
				"name": "output_activate_digital_module",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"kind": "header",
											"name": "authorization",
											"orig": "authorization",
											"reqd": true,
											"type": "`$STRING`",
										},
									},
								},
								"kind": "http",
								"method": "POST",
								"orig": "/activateDigitalModule",
								"segments": []any{
									map[string]any{
										"lit": "activateDigitalModule",
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
								},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"activateDigitalModule",
								},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"output_activate_portal_module": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "clientSecret",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "notificationEmail",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
				},
				"name": "output_activate_portal_module",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"kind": "header",
											"name": "authorization",
											"orig": "authorization",
											"reqd": true,
											"type": "`$STRING`",
										},
									},
								},
								"kind": "http",
								"method": "POST",
								"orig": "/activateMerchantPortalModule",
								"segments": []any{
									map[string]any{
										"lit": "activateMerchantPortalModule",
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
								},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"activateMerchantPortalModule",
								},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"output_activate_store_module": map[string]any{
				"fields": []any{
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
				},
				"name": "output_activate_store_module",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"kind": "header",
											"name": "authorization",
											"orig": "authorization",
											"reqd": true,
											"type": "`$STRING`",
										},
									},
								},
								"kind": "http",
								"method": "POST",
								"orig": "/activateAppStoreModule",
								"segments": []any{
									map[string]any{
										"lit": "activateAppStoreModule",
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
								},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"activateAppStoreModule",
								},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"output_activate_user": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "consumerUUID",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
				},
				"name": "output_activate_user",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"kind": "header",
											"name": "authorization",
											"orig": "authorization",
											"reqd": true,
											"type": "`$STRING`",
										},
									},
								},
								"kind": "http",
								"method": "POST",
								"orig": "/activateUser",
								"segments": []any{
									map[string]any{
										"lit": "activateUser",
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
								},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"activateUser",
								},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"output_assign_role": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "consumerUUID",
						"req": true,
						"short": "Unique identifier of the consumer (user) to whom the role(s) will be assigned.",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"short": "Response code: 0 indicates success; any non-zero value indicates an error.",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"short": "A human-readable message providing additional details about the outcome.",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "roles",
						"req": true,
						"short": "List of roles to assign to the consumer.",
						"type": "`$ARRAY`",
					},
				},
				"name": "output_assign_role",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"kind": "header",
											"name": "authorization",
											"orig": "authorization",
											"reqd": true,
											"type": "`$STRING`",
										},
									},
								},
								"kind": "http",
								"method": "POST",
								"orig": "/assignRoles",
								"segments": []any{
									map[string]any{
										"lit": "assignRoles",
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
								},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"assignRoles",
								},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"output_change_logo": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "contentAsBase64",
						"req": true,
						"short": "The content of the image as base64 encoded string",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "mimeType",
						"req": true,
						"short": "The MIME type of the image",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
				},
				"name": "output_change_logo",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"kind": "header",
											"name": "authorization",
											"orig": "authorization",
											"reqd": true,
											"type": "`$STRING`",
										},
									},
								},
								"kind": "http",
								"method": "POST",
								"orig": "/changeLogo",
								"segments": []any{
									map[string]any{
										"lit": "changeLogo",
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
								},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"changeLogo",
								},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"output_create_mandator": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "city",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "country",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "dateOfBirth",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "description",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$STRING`",
							},
						},
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "driversLicenseNumber",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "email",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "firstName",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "identificationNumber",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "lastName",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "login",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "name",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$STRING`",
							},
						},
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "passportNumber",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "phone",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "salutation",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "state",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "street1",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "street2",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "zipCode",
						"type": "`$STRING`",
					},
				},
				"name": "output_create_mandator",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"kind": "header",
											"name": "authorization",
											"orig": "authorization",
											"reqd": true,
											"type": "`$STRING`",
										},
									},
								},
								"kind": "http",
								"method": "POST",
								"orig": "/createMandator",
								"segments": []any{
									map[string]any{
										"lit": "createMandator",
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
								},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body.mandator`",
								},
								"parts": []any{
									"createMandator",
								},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"output_create_service_user": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "mandatorName",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
				},
				"name": "output_create_service_user",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"kind": "header",
											"name": "authorization",
											"orig": "authorization",
											"reqd": true,
											"type": "`$STRING`",
										},
									},
								},
								"kind": "http",
								"method": "POST",
								"orig": "/createServiceUser",
								"segments": []any{
									map[string]any{
										"lit": "createServiceUser",
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
								},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"createServiceUser",
								},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"output_deactivate_user": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "consumerUUID",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
				},
				"name": "output_deactivate_user",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"kind": "header",
											"name": "authorization",
											"orig": "authorization",
											"reqd": true,
											"type": "`$STRING`",
										},
									},
								},
								"kind": "http",
								"method": "POST",
								"orig": "/deactivateUser",
								"segments": []any{
									map[string]any{
										"lit": "deactivateUser",
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
								},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"deactivateUser",
								},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"output_get_kyc_document": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "caseID",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "encodedDataBase64",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
				},
				"name": "output_get_kyc_document",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"kind": "header",
											"name": "authorization",
											"orig": "authorization",
											"reqd": true,
											"type": "`$STRING`",
										},
									},
								},
								"kind": "http",
								"method": "POST",
								"orig": "/getKycDocument",
								"segments": []any{
									map[string]any{
										"lit": "getKycDocument",
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
								},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"getKycDocument",
								},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"output_get_logo": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "contentAsBase64",
						"req": true,
						"short": "The content of the image as base64 encoded string",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "mimeType",
						"req": true,
						"short": "The MIME type of the image",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
				},
				"name": "output_get_logo",
				"op": map[string]any{
					"load": map[string]any{
						"input": "data",
						"name": "load",
						"points": []any{
							map[string]any{
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"kind": "header",
											"name": "authorization",
											"orig": "authorization",
											"reqd": true,
											"type": "`$STRING`",
										},
									},
								},
								"kind": "http",
								"method": "GET",
								"orig": "/getLogo",
								"segments": []any{
									map[string]any{
										"lit": "getLogo",
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
								},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"getLogo",
								},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"output_list_of_available_role": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "availableRoles",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
				},
				"name": "output_list_of_available_role",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"kind": "header",
											"name": "authorization",
											"orig": "authorization",
											"reqd": true,
											"type": "`$STRING`",
										},
									},
								},
								"kind": "http",
								"method": "POST",
								"orig": "/listOfAvailableRoles",
								"segments": []any{
									map[string]any{
										"lit": "listOfAvailableRoles",
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
								},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"listOfAvailableRoles",
								},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"output_list_of_mandator": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "filter",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "list",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "pagination",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "sorting",
						"type": "`$OBJECT`",
					},
				},
				"name": "output_list_of_mandator",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"kind": "header",
											"name": "authorization",
											"orig": "authorization",
											"reqd": true,
											"type": "`$STRING`",
										},
									},
								},
								"kind": "http",
								"method": "POST",
								"orig": "/listOfMandators",
								"segments": []any{
									map[string]any{
										"lit": "listOfMandators",
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
								},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"listOfMandators",
								},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"output_list_of_module": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "list",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "pagination",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
				},
				"name": "output_list_of_module",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"kind": "header",
											"name": "authorization",
											"orig": "authorization",
											"reqd": true,
											"type": "`$STRING`",
										},
									},
								},
								"kind": "http",
								"method": "POST",
								"orig": "/listOfModules",
								"segments": []any{
									map[string]any{
										"lit": "listOfModules",
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
								},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"listOfModules",
								},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"output_list_of_role_group": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "filter",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "groupRoles",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "pagination",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "sorting",
						"type": "`$OBJECT`",
					},
				},
				"name": "output_list_of_role_group",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"kind": "header",
											"name": "authorization",
											"orig": "authorization",
											"reqd": true,
											"type": "`$STRING`",
										},
									},
								},
								"kind": "http",
								"method": "POST",
								"orig": "/listOfRoleGroups",
								"segments": []any{
									map[string]any{
										"lit": "listOfRoleGroups",
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
								},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"listOfRoleGroups",
								},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"output_list_of_transactions_history": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "filter",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "list",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "pagination",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "sorting",
						"type": "`$OBJECT`",
					},
				},
				"name": "output_list_of_transactions_history",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"kind": "header",
											"name": "authorization",
											"orig": "authorization",
											"reqd": true,
											"type": "`$STRING`",
										},
									},
								},
								"kind": "http",
								"method": "POST",
								"orig": "/listOfTransactionsHistory",
								"segments": []any{
									map[string]any{
										"lit": "listOfTransactionsHistory",
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
								},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"listOfTransactionsHistory",
								},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"output_list_of_user": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "filter",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "list",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "pagination",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "sorting",
						"type": "`$OBJECT`",
					},
				},
				"name": "output_list_of_user",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"kind": "header",
											"name": "authorization",
											"orig": "authorization",
											"reqd": true,
											"type": "`$STRING`",
										},
									},
								},
								"kind": "http",
								"method": "POST",
								"orig": "/listOfUsers",
								"segments": []any{
									map[string]any{
										"lit": "listOfUsers",
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
								},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"listOfUsers",
								},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"output_provide_credential": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "mandatorName",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "password",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "username",
						"type": "`$STRING`",
					},
				},
				"name": "output_provide_credential",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"kind": "header",
											"name": "authorization",
											"orig": "authorization",
											"reqd": true,
											"type": "`$STRING`",
										},
									},
								},
								"kind": "http",
								"method": "POST",
								"orig": "/provideCredentials",
								"segments": []any{
									map[string]any{
										"lit": "provideCredentials",
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
								},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"provideCredentials",
								},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"output_register_user": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "city",
						"short": "City where the user resides.",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "consumerId",
						"short": "User login or unique user identifier.",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "consumerLanguage",
						"short": "Preferred language for the user (e.g., 'en').",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "country",
						"short": "User's country.",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "dateOfBirth",
						"short": "User's date of birth (expected format: dd.MM.yyyy).",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "driverLicenceNumber",
						"short": "User's driver's license number.",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "email",
						"name": "email",
						"req": true,
						"short": "User's email address (must be unique).",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "firstName",
						"short": "User's first name.",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "identificationNumber",
						"short": "User's identification number.",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "lastName",
						"short": "User's last name.",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "login",
						"short": "User login identifier (should be unique).",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "module",
						"short": "Module identifier (if applicable).",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "passportNumber",
						"short": "User's passport number.",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "phone",
						"short": "User's phone number.",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"short": "Response code (0 indicates success; non-zero indicates an error).",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"short": "Human-readable response message.",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "salutation",
						"short": "User's salutation (e.g., Mr., Ms.).",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "state",
						"short": "User's state or region.",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "street1",
						"short": "Primary address line.",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "street2",
						"short": "Secondary address line.",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "zip",
						"short": "Postal code.",
						"type": "`$STRING`",
					},
				},
				"name": "output_register_user",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"kind": "header",
											"name": "authorization",
											"orig": "authorization",
											"reqd": true,
											"type": "`$STRING`",
										},
									},
								},
								"kind": "http",
								"method": "POST",
								"orig": "/registerUser",
								"segments": []any{
									map[string]any{
										"lit": "registerUser",
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
								},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"registerUser",
								},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"output_remove_role": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "consumerUUID",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "roles",
						"type": "`$ARRAY`",
					},
				},
				"name": "output_remove_role",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"kind": "header",
											"name": "authorization",
											"orig": "authorization",
											"reqd": true,
											"type": "`$STRING`",
										},
									},
								},
								"kind": "http",
								"method": "POST",
								"orig": "/removeRoles",
								"segments": []any{
									map[string]any{
										"lit": "removeRoles",
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
								},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"removeRoles",
								},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"output_resend_link": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "businessRegistrationNumber",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "consumerUUID",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "emailConfirmationCode",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "phoneNumber",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
				},
				"name": "output_resend_link",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"kind": "header",
											"name": "authorization",
											"orig": "authorization",
											"type": "`$STRING`",
										},
									},
								},
								"kind": "http",
								"method": "POST",
								"orig": "/resendLink",
								"segments": []any{
									map[string]any{
										"lit": "resendLink",
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
								},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"resendLink",
								},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"output_reset_password": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "consumerUuid",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "phoneNumber",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
				},
				"name": "output_reset_password",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"kind": "header",
											"name": "authorization",
											"orig": "authorization",
											"reqd": true,
											"type": "`$STRING`",
										},
									},
								},
								"kind": "http",
								"method": "POST",
								"orig": "/resetPassword",
								"segments": []any{
									map[string]any{
										"lit": "resetPassword",
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
								},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"resetPassword",
								},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"output_update_consumer": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "city",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "consumerUuid",
						"req": true,
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "consumerlanguage",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "country",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "dateOfBirth",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "datetime_created",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "driverLicenceNumber",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "email",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "firstName",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "identificationNumber",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "kycPassed",
						"type": "`$BOOLEAN`",
					},
					map[string]any{
						"name": "lastName",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "nationality",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "passportNumber",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "phoneNumber",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "placeOfBirth",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "state",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "street1",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "street2",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "transactionhistory_id",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "zip",
						"type": "`$STRING`",
					},
				},
				"name": "output_update_consumer",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"kind": "header",
											"name": "authorization",
											"orig": "authorization",
											"type": "`$STRING`",
										},
									},
								},
								"kind": "http",
								"method": "POST",
								"orig": "/updateConsumer",
								"segments": []any{
									map[string]any{
										"lit": "updateConsumer",
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
								},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"updateConsumer",
								},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"output_update_profile": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "consumerLanguage",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "email",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "firstName",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "lastName",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "phoneNumber",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "int32",
						"name": "responseCode",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "responseMessage",
						"type": "`$STRING`",
					},
				},
				"name": "output_update_profile",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"kind": "header",
											"name": "authorization",
											"orig": "authorization",
											"type": "`$STRING`",
										},
									},
								},
								"kind": "http",
								"method": "POST",
								"orig": "/updateProfile",
								"segments": []any{
									map[string]any{
										"lit": "updateProfile",
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
								},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"updateProfile",
								},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"version": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "appName",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "buildDate",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "version",
						"type": "`$STRING`",
					},
				},
				"name": "version",
				"op": map[string]any{
					"load": map[string]any{
						"input": "data",
						"name": "load",
						"points": []any{
							map[string]any{
								"args": map[string]any{},
								"kind": "http",
								"method": "GET",
								"orig": "/version",
								"segments": []any{
									map[string]any{
										"lit": "version",
									},
								},
								"select": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"parts": []any{
									"version",
								},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
		},
	}
}

// The plugin definitions the model selected per feature, as []any so a
// feature package can consume them without core naming its types. Empty
// when no active feature declares active plugin groups for this target.
var featurePlugins = map[string][]any{
}

// FeaturePlugins is the definitions list for one feature's chain.
func FeaturePlugins(name string) []any {
	return featurePlugins[name]
}

var (
	sharedConfigOnce sync.Once
	sharedConfigVal  map[string]any
)

// SharedConfig returns the process-wide config, built once on first use.
// The SDK reads the config on every request and never writes to it, so one
// instance is shared by every client rather than rebuilt per client.
//
// The returned map is shared: treat it as read-only. Callers that need to
// mutate should use MakeConfig, which always returns a fresh copy.
func SharedConfig() map[string]any {
	sharedConfigOnce.Do(func() {
		sharedConfigVal = MakeConfig()
	})
	return sharedConfigVal
}

func makeFeature(name string) Feature {
	switch name {
	case "audit":
		if NewAuditFeatureFunc != nil {
			return NewAuditFeatureFunc()
		}
	case "clienttrack":
		if NewClienttrackFeatureFunc != nil {
			return NewClienttrackFeatureFunc()
		}
	case "debug":
		if NewDebugFeatureFunc != nil {
			return NewDebugFeatureFunc()
		}
	case "idempotency":
		if NewIdempotencyFeatureFunc != nil {
			return NewIdempotencyFeatureFunc()
		}
	case "log":
		if NewLogFeatureFunc != nil {
			return NewLogFeatureFunc()
		}
	case "metrics":
		if NewMetricsFeatureFunc != nil {
			return NewMetricsFeatureFunc()
		}
	case "paging":
		if NewPagingFeatureFunc != nil {
			return NewPagingFeatureFunc()
		}
	case "ratelimit":
		if NewRatelimitFeatureFunc != nil {
			return NewRatelimitFeatureFunc()
		}
	case "retry":
		if NewRetryFeatureFunc != nil {
			return NewRetryFeatureFunc()
		}
	case "telemetry":
		if NewTelemetryFeatureFunc != nil {
			return NewTelemetryFeatureFunc()
		}
	case "test":
		if NewTestFeatureFunc != nil {
			return NewTestFeatureFunc()
		}
	case "timeout":
		if NewTimeoutFeatureFunc != nil {
			return NewTimeoutFeatureFunc()
		}
	default:
		if NewBaseFeatureFunc != nil {
			return NewBaseFeatureFunc()
		}
	}
	return nil
}
