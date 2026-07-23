;; BluefinTecsUserBackoffice SDK generated API tests.
(ns sdk.gentest
  (:require [sdk.api :as api]
            [sdk.config :as config]
            [sdk.testutil :as t]
            [clojure.string]
            [voxgig.struct :as vs]
            [sdk.entity.output_activate_digital_module :as e-output_activate_digital_module]
            [sdk.entity.output_activate_portal_module :as e-output_activate_portal_module]
            [sdk.entity.output_activate_store_module :as e-output_activate_store_module]
            [sdk.entity.output_activate_user :as e-output_activate_user]
            [sdk.entity.output_assign_role :as e-output_assign_role]
            [sdk.entity.output_change_logo :as e-output_change_logo]
            [sdk.entity.output_create_mandator :as e-output_create_mandator]
            [sdk.entity.output_create_service_user :as e-output_create_service_user]
            [sdk.entity.output_deactivate_user :as e-output_deactivate_user]
            [sdk.entity.output_get_kyc_document :as e-output_get_kyc_document]
            [sdk.entity.output_get_logo :as e-output_get_logo]
            [sdk.entity.output_list_of_available_role :as e-output_list_of_available_role]
            [sdk.entity.output_list_of_mandator :as e-output_list_of_mandator]
            [sdk.entity.output_list_of_module :as e-output_list_of_module]
            [sdk.entity.output_list_of_role_group :as e-output_list_of_role_group]
            [sdk.entity.output_list_of_transactions_history :as e-output_list_of_transactions_history]
            [sdk.entity.output_list_of_user :as e-output_list_of_user]
            [sdk.entity.output_provide_credential :as e-output_provide_credential]
            [sdk.entity.output_register_user :as e-output_register_user]
            [sdk.entity.output_remove_role :as e-output_remove_role]
            [sdk.entity.output_resend_link :as e-output_resend_link]
            [sdk.entity.output_reset_password :as e-output_reset_password]
            [sdk.entity.output_update_consumer :as e-output_update_consumer]
            [sdk.entity.output_update_profile :as e-output_update_profile]
            [sdk.entity.version :as e-version]))

(defn run [rec]
  (t/run-check rec "gen-exists-output_activate_digital_module"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/output_activate_digital_module sdk nil)) "output_activate_digital_module accessor present"))))
  (t/run-check rec "gen-smoke-output_activate_digital_module"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/output_activate_digital_module sdk nil)]
             (let [res (e-output_activate_digital_module/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-output_activate_portal_module"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/output_activate_portal_module sdk nil)) "output_activate_portal_module accessor present"))))
  (t/run-check rec "gen-smoke-output_activate_portal_module"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/output_activate_portal_module sdk nil)]
             (let [res (e-output_activate_portal_module/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-output_activate_store_module"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/output_activate_store_module sdk nil)) "output_activate_store_module accessor present"))))
  (t/run-check rec "gen-smoke-output_activate_store_module"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/output_activate_store_module sdk nil)]
             (let [res (e-output_activate_store_module/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-output_activate_user"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/output_activate_user sdk nil)) "output_activate_user accessor present"))))
  (t/run-check rec "gen-smoke-output_activate_user"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/output_activate_user sdk nil)]
             (let [res (e-output_activate_user/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-output_assign_role"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/output_assign_role sdk nil)) "output_assign_role accessor present"))))
  (t/run-check rec "gen-smoke-output_assign_role"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/output_assign_role sdk nil)]
             (let [res (e-output_assign_role/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-output_change_logo"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/output_change_logo sdk nil)) "output_change_logo accessor present"))))
  (t/run-check rec "gen-smoke-output_change_logo"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/output_change_logo sdk nil)]
             (let [res (e-output_change_logo/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-output_create_mandator"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/output_create_mandator sdk nil)) "output_create_mandator accessor present"))))
  (t/run-check rec "gen-smoke-output_create_mandator"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/output_create_mandator sdk nil)]
             (let [res (e-output_create_mandator/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-output_create_service_user"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/output_create_service_user sdk nil)) "output_create_service_user accessor present"))))
  (t/run-check rec "gen-smoke-output_create_service_user"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/output_create_service_user sdk nil)]
             (let [res (e-output_create_service_user/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-output_deactivate_user"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/output_deactivate_user sdk nil)) "output_deactivate_user accessor present"))))
  (t/run-check rec "gen-smoke-output_deactivate_user"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/output_deactivate_user sdk nil)]
             (let [res (e-output_deactivate_user/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-output_get_kyc_document"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/output_get_kyc_document sdk nil)) "output_get_kyc_document accessor present"))))
  (t/run-check rec "gen-smoke-output_get_kyc_document"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/output_get_kyc_document sdk nil)]
             (let [res (e-output_get_kyc_document/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-output_get_logo"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/output_get_logo sdk nil)) "output_get_logo accessor present"))))
  (t/run-check rec "gen-exists-output_list_of_available_role"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/output_list_of_available_role sdk nil)) "output_list_of_available_role accessor present"))))
  (t/run-check rec "gen-smoke-output_list_of_available_role"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/output_list_of_available_role sdk nil)]
             (let [res (e-output_list_of_available_role/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-output_list_of_mandator"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/output_list_of_mandator sdk nil)) "output_list_of_mandator accessor present"))))
  (t/run-check rec "gen-smoke-output_list_of_mandator"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/output_list_of_mandator sdk nil)]
             (let [res (e-output_list_of_mandator/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-output_list_of_module"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/output_list_of_module sdk nil)) "output_list_of_module accessor present"))))
  (t/run-check rec "gen-smoke-output_list_of_module"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/output_list_of_module sdk nil)]
             (let [res (e-output_list_of_module/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-output_list_of_role_group"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/output_list_of_role_group sdk nil)) "output_list_of_role_group accessor present"))))
  (t/run-check rec "gen-smoke-output_list_of_role_group"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/output_list_of_role_group sdk nil)]
             (let [res (e-output_list_of_role_group/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-output_list_of_transactions_history"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/output_list_of_transactions_history sdk nil)) "output_list_of_transactions_history accessor present"))))
  (t/run-check rec "gen-smoke-output_list_of_transactions_history"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/output_list_of_transactions_history sdk nil)]
             (let [res (e-output_list_of_transactions_history/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-output_list_of_user"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/output_list_of_user sdk nil)) "output_list_of_user accessor present"))))
  (t/run-check rec "gen-smoke-output_list_of_user"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/output_list_of_user sdk nil)]
             (let [res (e-output_list_of_user/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-output_provide_credential"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/output_provide_credential sdk nil)) "output_provide_credential accessor present"))))
  (t/run-check rec "gen-smoke-output_provide_credential"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/output_provide_credential sdk nil)]
             (let [res (e-output_provide_credential/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-output_register_user"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/output_register_user sdk nil)) "output_register_user accessor present"))))
  (t/run-check rec "gen-smoke-output_register_user"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/output_register_user sdk nil)]
             (let [res (e-output_register_user/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-output_remove_role"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/output_remove_role sdk nil)) "output_remove_role accessor present"))))
  (t/run-check rec "gen-smoke-output_remove_role"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/output_remove_role sdk nil)]
             (let [res (e-output_remove_role/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-output_resend_link"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/output_resend_link sdk nil)) "output_resend_link accessor present"))))
  (t/run-check rec "gen-smoke-output_resend_link"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/output_resend_link sdk nil)]
             (let [res (e-output_resend_link/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-output_reset_password"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/output_reset_password sdk nil)) "output_reset_password accessor present"))))
  (t/run-check rec "gen-smoke-output_reset_password"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/output_reset_password sdk nil)]
             (let [res (e-output_reset_password/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-output_update_consumer"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/output_update_consumer sdk nil)) "output_update_consumer accessor present"))))
  (t/run-check rec "gen-smoke-output_update_consumer"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/output_update_consumer sdk nil)]
             (let [res (e-output_update_consumer/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-output_update_profile"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/output_update_profile sdk nil)) "output_update_profile accessor present"))))
  (t/run-check rec "gen-smoke-output_update_profile"
    (fn [] (let [sdk (api/test-sdk nil nil)
                 ent (api/output_update_profile sdk nil)]
             (let [res (e-output_update_profile/create ent (vs/jm "name" "smoke") nil)]
               (t/is-true (vs/ismap res) "create returns a record map")
               (t/is-true (some? (vs/getprop res "id")) "created record has an id"))
             )))
  (t/run-check rec "gen-exists-version"
    (fn [] (let [sdk (api/test-sdk nil nil)]
             (t/is-true (some? (api/version sdk nil)) "version accessor present"))))
  (t/run-check rec "gen-prepare-output_get_logo"
    (fn [] (let [client (api/make-sdk (vs/jm "base" "http://example.test" "apikey" "test-key"))
                 fetchdef (api/prepare client (vs/jm "path" "/api/output_get_logo" "method" "GET"))]
             (t/is-true (vs/ismap fetchdef) "prepare returns a fetchdef map")
             (t/is-some (vs/getprop fetchdef "url") "fetchdef carries a url")
             (t/is-eq (vs/getprop fetchdef "method") "GET" "fetchdef preserves the method"))))
  (t/run-check rec "gen-direct-output_get_logo"
    (fn [] (let [fetch (fn [_url _fetchdef]
                         [(vs/jm "status" 200 "statusText" "OK" "headers" (vs/jm)
                                 "json" (fn [] (vs/jm "id" "d1"))) nil])
                 client (api/make-sdk (vs/jm "base" "http://example.test" "apikey" "test-key"
                                             "system" (vs/jm "fetch" fetch)))
                 result (api/direct client (vs/jm "path" "/api/output_get_logo" "method" "GET"))]
             (t/is-true (vs/ismap result) "direct returns a result map")
             (t/is-true (vs/getprop result "ok") "direct 200 => ok true")
             (t/is-eq (vs/getprop result "status") 200 "direct surfaces the status"))))
  (t/run-check rec "gen-prepare-version"
    (fn [] (let [client (api/make-sdk (vs/jm "base" "http://example.test" "apikey" "test-key"))
                 fetchdef (api/prepare client (vs/jm "path" "/api/version" "method" "GET"))]
             (t/is-true (vs/ismap fetchdef) "prepare returns a fetchdef map")
             (t/is-some (vs/getprop fetchdef "url") "fetchdef carries a url")
             (t/is-eq (vs/getprop fetchdef "method") "GET" "fetchdef preserves the method"))))
  (t/run-check rec "gen-direct-version"
    (fn [] (let [fetch (fn [_url _fetchdef]
                         [(vs/jm "status" 200 "statusText" "OK" "headers" (vs/jm)
                                 "json" (fn [] (vs/jm "id" "d1"))) nil])
                 client (api/make-sdk (vs/jm "base" "http://example.test" "apikey" "test-key"
                                             "system" (vs/jm "fetch" fetch)))
                 result (api/direct client (vs/jm "path" "/api/version" "method" "GET"))]
             (t/is-true (vs/ismap result) "direct returns a result map")
             (t/is-true (vs/getprop result "ok") "direct 200 => ok true")
             (t/is-eq (vs/getprop result "status") 200 "direct surfaces the status"))))
  (letfn [(clj-blocks [text]
            (let [fence (apply str (repeat 3 (char 96)))
                  parts (clojure.string/split text (re-pattern fence))]
              (->> parts
                   (map-indexed vector)
                   (filter (fn [[i _]] (odd? i)))
                   (map (fn [[_ seg]] seg))
                   (filter (fn [seg]
                             (= "clojure"
                                (clojure.string/trim (first (clojure.string/split-lines seg))))))
                   (map (fn [seg]
                          (clojure.string/join "\n"
                            (rest (clojure.string/split-lines seg))))))))]
    (doseq [[label path] [["root-README" "../README.md"]
                          ["README" "README.md"]
                          ["REFERENCE" "REFERENCE.md"]]]
      (t/run-check rec (str "gen-readme-examples-" label)
        (fn []
          (if-not (.exists (java.io.File. ^String path))
            (t/is-true true (str label " absent (skipped)"))
            (let [blocks (clj-blocks (slurp path))]
              (doseq [b blocks]
                (binding [*read-eval* false]
                  (read-string (str "[\n" b "\n]"))))
              (t/is-true true (str label " clojure blocks parse cleanly"))))))))
  nil)
