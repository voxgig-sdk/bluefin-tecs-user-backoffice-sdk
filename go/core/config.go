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
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
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
								"kind": "http",
								"method": "POST",
								"orig": "/activateDigitalModule",
								"segments": []any{
									map[string]any{
										"lit": "activateDigitalModule",
									},
								},
								"parts": []any{
									"activateDigitalModule",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"name": "authorization",
											"orig": "authorization",
											"type": "`$STRING`",
											"kind": "header",
											"reqd": true,
										},
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
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
						"title": "Client Secret",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "notificationEmail",
						"title": "Notification Email",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
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
								"kind": "http",
								"method": "POST",
								"orig": "/activateMerchantPortalModule",
								"segments": []any{
									map[string]any{
										"lit": "activateMerchantPortalModule",
									},
								},
								"parts": []any{
									"activateMerchantPortalModule",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"name": "authorization",
											"orig": "authorization",
											"type": "`$STRING`",
											"kind": "header",
											"reqd": true,
										},
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
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
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
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
								"kind": "http",
								"method": "POST",
								"orig": "/activateAppStoreModule",
								"segments": []any{
									map[string]any{
										"lit": "activateAppStoreModule",
									},
								},
								"parts": []any{
									"activateAppStoreModule",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"name": "authorization",
											"orig": "authorization",
											"type": "`$STRING`",
											"kind": "header",
											"reqd": true,
										},
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
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
						"title": "Consumer Uuid",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
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
								"kind": "http",
								"method": "POST",
								"orig": "/activateUser",
								"segments": []any{
									map[string]any{
										"lit": "activateUser",
									},
								},
								"parts": []any{
									"activateUser",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"name": "authorization",
											"orig": "authorization",
											"type": "`$STRING`",
											"kind": "header",
											"reqd": true,
										},
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
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
						"title": "Consumer Uuid",
						"type": "`$STRING`",
						"req": true,
						"short": "Unique identifier of the consumer (user) to whom the role(s) will be assigned.",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"short": "Response code: 0 indicates success; any non-zero value indicates an error.",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
						"short": "A human-readable message providing additional details about the outcome.",
					},
					map[string]any{
						"name": "roles",
						"title": "Roles",
						"type": "`$ARRAY`",
						"req": true,
						"short": "List of roles to assign to the consumer.",
					},
				},
				"name": "output_assign_role",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/assignRoles",
								"segments": []any{
									map[string]any{
										"lit": "assignRoles",
									},
								},
								"parts": []any{
									"assignRoles",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"name": "authorization",
											"orig": "authorization",
											"type": "`$STRING`",
											"kind": "header",
											"reqd": true,
										},
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
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
						"title": "Content As Base64",
						"type": "`$STRING`",
						"req": true,
						"short": "The content of the image as base64 encoded string",
					},
					map[string]any{
						"name": "mimeType",
						"title": "Mime Type",
						"type": "`$STRING`",
						"req": true,
						"short": "The MIME type of the image",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
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
								"kind": "http",
								"method": "POST",
								"orig": "/changeLogo",
								"segments": []any{
									map[string]any{
										"lit": "changeLogo",
									},
								},
								"parts": []any{
									"changeLogo",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"name": "authorization",
											"orig": "authorization",
											"type": "`$STRING`",
											"kind": "header",
											"reqd": true,
										},
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
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
						"title": "City",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "country",
						"title": "Country",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "dateOfBirth",
						"title": "Date Of Birth",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "description",
						"title": "Description",
						"type": "`$STRING`",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$STRING`",
							},
						},
					},
					map[string]any{
						"name": "driversLicenseNumber",
						"title": "Drivers License Number",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "email",
						"title": "Email",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "firstName",
						"title": "First Name",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "identificationNumber",
						"title": "Identification Number",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "lastName",
						"title": "Last Name",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "login",
						"title": "Login",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "name",
						"title": "Name",
						"type": "`$STRING`",
						"op": map[string]any{
							"create": map[string]any{
								"req": true,
								"type": "`$STRING`",
							},
						},
					},
					map[string]any{
						"name": "passportNumber",
						"title": "Passport Number",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "phone",
						"title": "Phone",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "salutation",
						"title": "Salutation",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "state",
						"title": "State",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "street1",
						"title": "Street1",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "street2",
						"title": "Street2",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "zipCode",
						"title": "Zip Code",
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
								"kind": "http",
								"method": "POST",
								"orig": "/createMandator",
								"segments": []any{
									map[string]any{
										"lit": "createMandator",
									},
								},
								"parts": []any{
									"createMandator",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body.mandator`",
								},
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"name": "authorization",
											"orig": "authorization",
											"type": "`$STRING`",
											"kind": "header",
											"reqd": true,
										},
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
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
						"title": "Mandator Name",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
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
								"kind": "http",
								"method": "POST",
								"orig": "/createServiceUser",
								"segments": []any{
									map[string]any{
										"lit": "createServiceUser",
									},
								},
								"parts": []any{
									"createServiceUser",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"name": "authorization",
											"orig": "authorization",
											"type": "`$STRING`",
											"kind": "header",
											"reqd": true,
										},
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
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
						"title": "Consumer Uuid",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
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
								"kind": "http",
								"method": "POST",
								"orig": "/deactivateUser",
								"segments": []any{
									map[string]any{
										"lit": "deactivateUser",
									},
								},
								"parts": []any{
									"deactivateUser",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"name": "authorization",
											"orig": "authorization",
											"type": "`$STRING`",
											"kind": "header",
											"reqd": true,
										},
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
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
						"title": "Case Id",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "encodedDataBase64",
						"title": "Encoded Data Base64",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
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
								"kind": "http",
								"method": "POST",
								"orig": "/getKycDocument",
								"segments": []any{
									map[string]any{
										"lit": "getKycDocument",
									},
								},
								"parts": []any{
									"getKycDocument",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"name": "authorization",
											"orig": "authorization",
											"type": "`$STRING`",
											"kind": "header",
											"reqd": true,
										},
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
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
						"title": "Content As Base64",
						"type": "`$STRING`",
						"req": true,
						"short": "The content of the image as base64 encoded string",
					},
					map[string]any{
						"name": "mimeType",
						"title": "Mime Type",
						"type": "`$STRING`",
						"req": true,
						"short": "The MIME type of the image",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
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
								"kind": "http",
								"method": "GET",
								"orig": "/getLogo",
								"segments": []any{
									map[string]any{
										"lit": "getLogo",
									},
								},
								"parts": []any{
									"getLogo",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"name": "authorization",
											"orig": "authorization",
											"type": "`$STRING`",
											"kind": "header",
											"reqd": true,
										},
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
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
						"title": "Available Roles",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
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
								"kind": "http",
								"method": "POST",
								"orig": "/listOfAvailableRoles",
								"segments": []any{
									map[string]any{
										"lit": "listOfAvailableRoles",
									},
								},
								"parts": []any{
									"listOfAvailableRoles",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"name": "authorization",
											"orig": "authorization",
											"type": "`$STRING`",
											"kind": "header",
											"reqd": true,
										},
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
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
						"title": "Filter",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "list",
						"title": "List",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "pagination",
						"title": "Pagination",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "sorting",
						"title": "Sorting",
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
								"kind": "http",
								"method": "POST",
								"orig": "/listOfMandators",
								"segments": []any{
									map[string]any{
										"lit": "listOfMandators",
									},
								},
								"parts": []any{
									"listOfMandators",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"name": "authorization",
											"orig": "authorization",
											"type": "`$STRING`",
											"kind": "header",
											"reqd": true,
										},
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
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
						"title": "List",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "pagination",
						"title": "Pagination",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
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
								"kind": "http",
								"method": "POST",
								"orig": "/listOfModules",
								"segments": []any{
									map[string]any{
										"lit": "listOfModules",
									},
								},
								"parts": []any{
									"listOfModules",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"name": "authorization",
											"orig": "authorization",
											"type": "`$STRING`",
											"kind": "header",
											"reqd": true,
										},
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
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
						"title": "Filter",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "groupRoles",
						"title": "Group Roles",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "pagination",
						"title": "Pagination",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "sorting",
						"title": "Sorting",
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
								"kind": "http",
								"method": "POST",
								"orig": "/listOfRoleGroups",
								"segments": []any{
									map[string]any{
										"lit": "listOfRoleGroups",
									},
								},
								"parts": []any{
									"listOfRoleGroups",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"name": "authorization",
											"orig": "authorization",
											"type": "`$STRING`",
											"kind": "header",
											"reqd": true,
										},
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
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
						"title": "Filter",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "list",
						"title": "List",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "pagination",
						"title": "Pagination",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "sorting",
						"title": "Sorting",
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
								"kind": "http",
								"method": "POST",
								"orig": "/listOfTransactionsHistory",
								"segments": []any{
									map[string]any{
										"lit": "listOfTransactionsHistory",
									},
								},
								"parts": []any{
									"listOfTransactionsHistory",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"name": "authorization",
											"orig": "authorization",
											"type": "`$STRING`",
											"kind": "header",
											"reqd": true,
										},
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
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
						"title": "Filter",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "list",
						"title": "List",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "pagination",
						"title": "Pagination",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "sorting",
						"title": "Sorting",
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
								"kind": "http",
								"method": "POST",
								"orig": "/listOfUsers",
								"segments": []any{
									map[string]any{
										"lit": "listOfUsers",
									},
								},
								"parts": []any{
									"listOfUsers",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"name": "authorization",
											"orig": "authorization",
											"type": "`$STRING`",
											"kind": "header",
											"reqd": true,
										},
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
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
						"title": "Mandator Name",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "password",
						"title": "Password",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "username",
						"title": "Username",
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
								"kind": "http",
								"method": "POST",
								"orig": "/provideCredentials",
								"segments": []any{
									map[string]any{
										"lit": "provideCredentials",
									},
								},
								"parts": []any{
									"provideCredentials",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"name": "authorization",
											"orig": "authorization",
											"type": "`$STRING`",
											"kind": "header",
											"reqd": true,
										},
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
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
						"title": "City",
						"type": "`$STRING`",
						"short": "City where the user resides.",
					},
					map[string]any{
						"name": "consumerId",
						"title": "Consumer Id",
						"type": "`$STRING`",
						"short": "User login or unique user identifier.",
					},
					map[string]any{
						"name": "consumerLanguage",
						"title": "Consumer Language",
						"type": "`$STRING`",
						"short": "Preferred language for the user (e.g., 'en').",
					},
					map[string]any{
						"name": "country",
						"title": "Country",
						"type": "`$STRING`",
						"short": "User's country.",
					},
					map[string]any{
						"name": "dateOfBirth",
						"title": "Date Of Birth",
						"type": "`$STRING`",
						"short": "User's date of birth (expected format: dd.MM.yyyy).",
					},
					map[string]any{
						"name": "driverLicenceNumber",
						"title": "Driver Licence Number",
						"type": "`$STRING`",
						"short": "User's driver's license number.",
					},
					map[string]any{
						"name": "email",
						"title": "Email",
						"type": "`$STRING`",
						"req": true,
						"short": "User's email address (must be unique).",
						"format": "email",
					},
					map[string]any{
						"name": "firstName",
						"title": "First Name",
						"type": "`$STRING`",
						"short": "User's first name.",
					},
					map[string]any{
						"name": "identificationNumber",
						"title": "Identification Number",
						"type": "`$STRING`",
						"short": "User's identification number.",
					},
					map[string]any{
						"name": "lastName",
						"title": "Last Name",
						"type": "`$STRING`",
						"short": "User's last name.",
					},
					map[string]any{
						"name": "login",
						"title": "Login",
						"type": "`$STRING`",
						"short": "User login identifier (should be unique).",
					},
					map[string]any{
						"name": "module",
						"title": "Module",
						"type": "`$STRING`",
						"short": "Module identifier (if applicable).",
					},
					map[string]any{
						"name": "passportNumber",
						"title": "Passport Number",
						"type": "`$STRING`",
						"short": "User's passport number.",
					},
					map[string]any{
						"name": "phone",
						"title": "Phone",
						"type": "`$STRING`",
						"short": "User's phone number.",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"short": "Response code (0 indicates success; non-zero indicates an error).",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
						"short": "Human-readable response message.",
					},
					map[string]any{
						"name": "salutation",
						"title": "Salutation",
						"type": "`$STRING`",
						"short": "User's salutation (e.g., Mr., Ms.).",
					},
					map[string]any{
						"name": "state",
						"title": "State",
						"type": "`$STRING`",
						"short": "User's state or region.",
					},
					map[string]any{
						"name": "street1",
						"title": "Street1",
						"type": "`$STRING`",
						"short": "Primary address line.",
					},
					map[string]any{
						"name": "street2",
						"title": "Street2",
						"type": "`$STRING`",
						"short": "Secondary address line.",
					},
					map[string]any{
						"name": "zip",
						"title": "Zip",
						"type": "`$STRING`",
						"short": "Postal code.",
					},
				},
				"name": "output_register_user",
				"op": map[string]any{
					"create": map[string]any{
						"input": "data",
						"name": "create",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "POST",
								"orig": "/registerUser",
								"segments": []any{
									map[string]any{
										"lit": "registerUser",
									},
								},
								"parts": []any{
									"registerUser",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"name": "authorization",
											"orig": "authorization",
											"type": "`$STRING`",
											"kind": "header",
											"reqd": true,
										},
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
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
						"title": "Consumer Uuid",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "roles",
						"title": "Roles",
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
								"kind": "http",
								"method": "POST",
								"orig": "/removeRoles",
								"segments": []any{
									map[string]any{
										"lit": "removeRoles",
									},
								},
								"parts": []any{
									"removeRoles",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"name": "authorization",
											"orig": "authorization",
											"type": "`$STRING`",
											"kind": "header",
											"reqd": true,
										},
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
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
						"title": "Business Registration Number",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "consumerUUID",
						"title": "Consumer Uuid",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "emailConfirmationCode",
						"title": "Email Confirmation Code",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "phoneNumber",
						"title": "Phone Number",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
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
								"kind": "http",
								"method": "POST",
								"orig": "/resendLink",
								"segments": []any{
									map[string]any{
										"lit": "resendLink",
									},
								},
								"parts": []any{
									"resendLink",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"name": "authorization",
											"orig": "authorization",
											"type": "`$STRING`",
											"kind": "header",
										},
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
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
						"title": "Consumer Uuid",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "phoneNumber",
						"title": "Phone Number",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
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
								"kind": "http",
								"method": "POST",
								"orig": "/resetPassword",
								"segments": []any{
									map[string]any{
										"lit": "resetPassword",
									},
								},
								"parts": []any{
									"resetPassword",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"name": "authorization",
											"orig": "authorization",
											"type": "`$STRING`",
											"kind": "header",
											"reqd": true,
										},
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
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
						"title": "City",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "consumerUuid",
						"title": "Consumer Uuid",
						"type": "`$STRING`",
						"req": true,
					},
					map[string]any{
						"name": "consumerlanguage",
						"title": "Consumerlanguage",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "country",
						"title": "Country",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "dateOfBirth",
						"title": "Date Of Birth",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "datetime_created",
						"title": "Datetime Created",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "driverLicenceNumber",
						"title": "Driver Licence Number",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "email",
						"title": "Email",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "firstName",
						"title": "First Name",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "identificationNumber",
						"title": "Identification Number",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "kycPassed",
						"title": "Kyc Passed",
						"type": "`$BOOLEAN`",
					},
					map[string]any{
						"name": "lastName",
						"title": "Last Name",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "nationality",
						"title": "Nationality",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "passportNumber",
						"title": "Passport Number",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "phoneNumber",
						"title": "Phone Number",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "placeOfBirth",
						"title": "Place Of Birth",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "state",
						"title": "State",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "street1",
						"title": "Street1",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "street2",
						"title": "Street2",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "transactionhistory_id",
						"title": "Transactionhistory Id",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "zip",
						"title": "Zip",
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
								"kind": "http",
								"method": "POST",
								"orig": "/updateConsumer",
								"segments": []any{
									map[string]any{
										"lit": "updateConsumer",
									},
								},
								"parts": []any{
									"updateConsumer",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"name": "authorization",
											"orig": "authorization",
											"type": "`$STRING`",
											"kind": "header",
										},
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
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
						"title": "Consumer Language",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "email",
						"title": "Email",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "firstName",
						"title": "First Name",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "lastName",
						"title": "Last Name",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "phoneNumber",
						"title": "Phone Number",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "responseCode",
						"title": "Response Code",
						"type": "`$INTEGER`",
						"format": "int32",
					},
					map[string]any{
						"name": "responseMessage",
						"title": "Response Message",
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
								"kind": "http",
								"method": "POST",
								"orig": "/updateProfile",
								"segments": []any{
									map[string]any{
										"lit": "updateProfile",
									},
								},
								"parts": []any{
									"updateProfile",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{
									"header": []any{
										map[string]any{
											"name": "authorization",
											"orig": "authorization",
											"type": "`$STRING`",
											"kind": "header",
										},
									},
								},
								"select": map[string]any{
									"exist": []any{
										"authorization",
									},
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
						"title": "App Name",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "buildDate",
						"title": "Build Date",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "version",
						"title": "Version",
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
								"kind": "http",
								"method": "GET",
								"orig": "/version",
								"segments": []any{
									map[string]any{
										"lit": "version",
									},
								},
								"parts": []any{
									"version",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{},
								"select": map[string]any{},
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
