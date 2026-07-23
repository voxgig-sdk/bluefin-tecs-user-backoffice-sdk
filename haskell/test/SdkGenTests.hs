-- Generated model-driven entity + direct tests.
{-# LANGUAGE ScopedTypeVariables #-}

module SdkGenTests (genTests) where

import Control.Exception (SomeException, try)
import Data.IORef

import VoxgigStruct (Value (..), emptyMap, keysof, ismap, islist, isNoval, clone)
import SdkTypes
import SdkHelpers
import qualified SdkFeatures as F
import qualified SdkClient as C
import qualified TReadmeExamples
import Testutil
import TestJson (jsonRead)

-- Load an entity fixture (../.sdk/test/entity/<name>/<Name>TestData.json).
loadFixture :: String -> IO Value
loadFixture entName = do
  -- The fixture DIRECTORY is the snake_case entity name (create_result), so a
  -- plain lowercase of the CamelCase entName (createresult) misses the
  -- underscores for multi-word entities. Convert CamelCase -> snake_case.
  let lname = camelToSnake entName
  raw <- readFile ("../.sdk/test/entity/" ++ lname ++ "/" ++ entName ++ "TestData.json")
  jsonRead raw
  where
    toLowerCh ch = if ch >= 'A' && ch <= 'Z' then toEnum (fromEnum ch + 32) else ch
    camelToSnake [] = []
    camelToSnake (c0 : rest) = toLowerCh c0 : go rest
    go [] = []
    go (c : cs)
      | c >= 'A' && c <= 'Z' = '_' : toLowerCh c : go cs
      | otherwise = c : go cs

-- The first new-ref data map for an entity (fixture.new.<entity>.<ref0>).
newRefData :: Value -> String -> IO Value
newRefData fixture entName = do
  newEnts <- getpathS fixture ("new." ++ entName)
  refs <- keysof newEnts
  case refs of
    [] -> emptyMap
    (r0 : _) -> do d <- getp newEnts r0; clone d

genTests :: Counters -> IO ()
genTests c = do
  TReadmeExamples.tests c
  output_activate_digital_moduleInstanceTest c
  output_activate_digital_moduleBasicTest c
  output_activate_digital_moduleDirectTest c
  output_activate_portal_moduleInstanceTest c
  output_activate_portal_moduleBasicTest c
  output_activate_portal_moduleDirectTest c
  output_activate_store_moduleInstanceTest c
  output_activate_store_moduleBasicTest c
  output_activate_store_moduleDirectTest c
  output_activate_userInstanceTest c
  output_activate_userBasicTest c
  output_activate_userDirectTest c
  output_assign_roleInstanceTest c
  output_assign_roleBasicTest c
  output_assign_roleDirectTest c
  output_change_logoInstanceTest c
  output_change_logoBasicTest c
  output_change_logoDirectTest c
  output_create_mandatorInstanceTest c
  output_create_mandatorBasicTest c
  output_create_mandatorDirectTest c
  output_create_service_userInstanceTest c
  output_create_service_userBasicTest c
  output_create_service_userDirectTest c
  output_deactivate_userInstanceTest c
  output_deactivate_userBasicTest c
  output_deactivate_userDirectTest c
  output_get_kyc_documentInstanceTest c
  output_get_kyc_documentBasicTest c
  output_get_kyc_documentDirectTest c
  output_get_logoInstanceTest c
  output_get_logoBasicTest c
  output_get_logoDirectTest c
  output_list_of_available_roleInstanceTest c
  output_list_of_available_roleBasicTest c
  output_list_of_available_roleDirectTest c
  output_list_of_mandatorInstanceTest c
  output_list_of_mandatorBasicTest c
  output_list_of_mandatorDirectTest c
  output_list_of_moduleInstanceTest c
  output_list_of_moduleBasicTest c
  output_list_of_moduleDirectTest c
  output_list_of_role_groupInstanceTest c
  output_list_of_role_groupBasicTest c
  output_list_of_role_groupDirectTest c
  output_list_of_transactions_historyInstanceTest c
  output_list_of_transactions_historyBasicTest c
  output_list_of_transactions_historyDirectTest c
  output_list_of_userInstanceTest c
  output_list_of_userBasicTest c
  output_list_of_userDirectTest c
  output_provide_credentialInstanceTest c
  output_provide_credentialBasicTest c
  output_provide_credentialDirectTest c
  output_register_userInstanceTest c
  output_register_userBasicTest c
  output_register_userDirectTest c
  output_remove_roleInstanceTest c
  output_remove_roleBasicTest c
  output_remove_roleDirectTest c
  output_resend_linkInstanceTest c
  output_resend_linkBasicTest c
  output_resend_linkDirectTest c
  output_reset_passwordInstanceTest c
  output_reset_passwordBasicTest c
  output_reset_passwordDirectTest c
  output_update_consumerInstanceTest c
  output_update_consumerBasicTest c
  output_update_consumerDirectTest c
  output_update_profileInstanceTest c
  output_update_profileBasicTest c
  output_update_profileDirectTest c
  versionInstanceTest c
  versionBasicTest c
  versionDirectTest c

output_activate_digital_moduleInstanceTest :: Counters -> IO ()
output_activate_digital_moduleInstanceTest c = runTest c "output_activate_digital_module.instance" $ do
  sdk <- C.testSdk0
  ent <- C.output_activate_digital_module sdk VNoval
  pure (eName ent == "output_activate_digital_module")

output_activate_digital_moduleBasicTest :: Counters -> IO ()
output_activate_digital_moduleBasicTest c = do
  fixture <- loadFixture "OutputActivateDigitalModule"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "output_activate_digital_module.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.output_activate_digital_module sdk VNoval
    d <- newRefData fixture "output_activate_digital_module"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cid <- getp created "id"
    pure (ismap created && not (isNoval cid))

output_activate_digital_moduleDirectTest :: Counters -> IO ()
output_activate_digital_moduleDirectTest c = runTest c "output_activate_digital_module.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/output_activate_digital_module/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

output_activate_portal_moduleInstanceTest :: Counters -> IO ()
output_activate_portal_moduleInstanceTest c = runTest c "output_activate_portal_module.instance" $ do
  sdk <- C.testSdk0
  ent <- C.output_activate_portal_module sdk VNoval
  pure (eName ent == "output_activate_portal_module")

output_activate_portal_moduleBasicTest :: Counters -> IO ()
output_activate_portal_moduleBasicTest c = do
  fixture <- loadFixture "OutputActivatePortalModule"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "output_activate_portal_module.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.output_activate_portal_module sdk VNoval
    d <- newRefData fixture "output_activate_portal_module"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cid <- getp created "id"
    pure (ismap created && not (isNoval cid))

output_activate_portal_moduleDirectTest :: Counters -> IO ()
output_activate_portal_moduleDirectTest c = runTest c "output_activate_portal_module.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/output_activate_portal_module/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

output_activate_store_moduleInstanceTest :: Counters -> IO ()
output_activate_store_moduleInstanceTest c = runTest c "output_activate_store_module.instance" $ do
  sdk <- C.testSdk0
  ent <- C.output_activate_store_module sdk VNoval
  pure (eName ent == "output_activate_store_module")

output_activate_store_moduleBasicTest :: Counters -> IO ()
output_activate_store_moduleBasicTest c = do
  fixture <- loadFixture "OutputActivateStoreModule"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "output_activate_store_module.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.output_activate_store_module sdk VNoval
    d <- newRefData fixture "output_activate_store_module"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cid <- getp created "id"
    pure (ismap created && not (isNoval cid))

output_activate_store_moduleDirectTest :: Counters -> IO ()
output_activate_store_moduleDirectTest c = runTest c "output_activate_store_module.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/output_activate_store_module/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

output_activate_userInstanceTest :: Counters -> IO ()
output_activate_userInstanceTest c = runTest c "output_activate_user.instance" $ do
  sdk <- C.testSdk0
  ent <- C.output_activate_user sdk VNoval
  pure (eName ent == "output_activate_user")

output_activate_userBasicTest :: Counters -> IO ()
output_activate_userBasicTest c = do
  fixture <- loadFixture "OutputActivateUser"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "output_activate_user.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.output_activate_user sdk VNoval
    d <- newRefData fixture "output_activate_user"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cid <- getp created "id"
    pure (ismap created && not (isNoval cid))

output_activate_userDirectTest :: Counters -> IO ()
output_activate_userDirectTest c = runTest c "output_activate_user.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/output_activate_user/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

output_assign_roleInstanceTest :: Counters -> IO ()
output_assign_roleInstanceTest c = runTest c "output_assign_role.instance" $ do
  sdk <- C.testSdk0
  ent <- C.output_assign_role sdk VNoval
  pure (eName ent == "output_assign_role")

output_assign_roleBasicTest :: Counters -> IO ()
output_assign_roleBasicTest c = do
  fixture <- loadFixture "OutputAssignRole"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "output_assign_role.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.output_assign_role sdk VNoval
    d <- newRefData fixture "output_assign_role"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cid <- getp created "id"
    pure (ismap created && not (isNoval cid))

output_assign_roleDirectTest :: Counters -> IO ()
output_assign_roleDirectTest c = runTest c "output_assign_role.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/output_assign_role/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

output_change_logoInstanceTest :: Counters -> IO ()
output_change_logoInstanceTest c = runTest c "output_change_logo.instance" $ do
  sdk <- C.testSdk0
  ent <- C.output_change_logo sdk VNoval
  pure (eName ent == "output_change_logo")

output_change_logoBasicTest :: Counters -> IO ()
output_change_logoBasicTest c = do
  fixture <- loadFixture "OutputChangeLogo"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "output_change_logo.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.output_change_logo sdk VNoval
    d <- newRefData fixture "output_change_logo"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cid <- getp created "id"
    pure (ismap created && not (isNoval cid))

output_change_logoDirectTest :: Counters -> IO ()
output_change_logoDirectTest c = runTest c "output_change_logo.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/output_change_logo/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

output_create_mandatorInstanceTest :: Counters -> IO ()
output_create_mandatorInstanceTest c = runTest c "output_create_mandator.instance" $ do
  sdk <- C.testSdk0
  ent <- C.output_create_mandator sdk VNoval
  pure (eName ent == "output_create_mandator")

output_create_mandatorBasicTest :: Counters -> IO ()
output_create_mandatorBasicTest c = do
  fixture <- loadFixture "OutputCreateMandator"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "output_create_mandator.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.output_create_mandator sdk VNoval
    d <- newRefData fixture "output_create_mandator"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cid <- getp created "id"
    pure (ismap created && not (isNoval cid))

output_create_mandatorDirectTest :: Counters -> IO ()
output_create_mandatorDirectTest c = runTest c "output_create_mandator.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/output_create_mandator/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

output_create_service_userInstanceTest :: Counters -> IO ()
output_create_service_userInstanceTest c = runTest c "output_create_service_user.instance" $ do
  sdk <- C.testSdk0
  ent <- C.output_create_service_user sdk VNoval
  pure (eName ent == "output_create_service_user")

output_create_service_userBasicTest :: Counters -> IO ()
output_create_service_userBasicTest c = do
  fixture <- loadFixture "OutputCreateServiceUser"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "output_create_service_user.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.output_create_service_user sdk VNoval
    d <- newRefData fixture "output_create_service_user"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cid <- getp created "id"
    pure (ismap created && not (isNoval cid))

output_create_service_userDirectTest :: Counters -> IO ()
output_create_service_userDirectTest c = runTest c "output_create_service_user.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/output_create_service_user/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

output_deactivate_userInstanceTest :: Counters -> IO ()
output_deactivate_userInstanceTest c = runTest c "output_deactivate_user.instance" $ do
  sdk <- C.testSdk0
  ent <- C.output_deactivate_user sdk VNoval
  pure (eName ent == "output_deactivate_user")

output_deactivate_userBasicTest :: Counters -> IO ()
output_deactivate_userBasicTest c = do
  fixture <- loadFixture "OutputDeactivateUser"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "output_deactivate_user.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.output_deactivate_user sdk VNoval
    d <- newRefData fixture "output_deactivate_user"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cid <- getp created "id"
    pure (ismap created && not (isNoval cid))

output_deactivate_userDirectTest :: Counters -> IO ()
output_deactivate_userDirectTest c = runTest c "output_deactivate_user.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/output_deactivate_user/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

output_get_kyc_documentInstanceTest :: Counters -> IO ()
output_get_kyc_documentInstanceTest c = runTest c "output_get_kyc_document.instance" $ do
  sdk <- C.testSdk0
  ent <- C.output_get_kyc_document sdk VNoval
  pure (eName ent == "output_get_kyc_document")

output_get_kyc_documentBasicTest :: Counters -> IO ()
output_get_kyc_documentBasicTest c = do
  fixture <- loadFixture "OutputGetKycDocument"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "output_get_kyc_document.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.output_get_kyc_document sdk VNoval
    d <- newRefData fixture "output_get_kyc_document"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cid <- getp created "id"
    pure (ismap created && not (isNoval cid))

output_get_kyc_documentDirectTest :: Counters -> IO ()
output_get_kyc_documentDirectTest c = runTest c "output_get_kyc_document.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/output_get_kyc_document/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

output_get_logoInstanceTest :: Counters -> IO ()
output_get_logoInstanceTest c = runTest c "output_get_logo.instance" $ do
  sdk <- C.testSdk0
  ent <- C.output_get_logo sdk VNoval
  pure (eName ent == "output_get_logo")

output_get_logoBasicTest :: Counters -> IO ()
output_get_logoBasicTest c = do
  fixture <- loadFixture "OutputGetLogo"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "output_get_logo.load" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.output_get_logo sdk VNoval
    entmap <- getp existing "output_get_logo"
    ids <- keysof entmap
    case ids of
      [] -> pure True
      (id0 : _) -> do
        m <- jo [("id", VStr id0)]; ctrl <- emptyMap
        loaded <- eLoad ent m ctrl
        lid <- getp loaded "id"
        pure (ismap loaded && vstring lid == id0)

output_get_logoDirectTest :: Counters -> IO ()
output_get_logoDirectTest c = runTest c "output_get_logo.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/output_get_logo/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

output_list_of_available_roleInstanceTest :: Counters -> IO ()
output_list_of_available_roleInstanceTest c = runTest c "output_list_of_available_role.instance" $ do
  sdk <- C.testSdk0
  ent <- C.output_list_of_available_role sdk VNoval
  pure (eName ent == "output_list_of_available_role")

output_list_of_available_roleBasicTest :: Counters -> IO ()
output_list_of_available_roleBasicTest c = do
  fixture <- loadFixture "OutputListOfAvailableRole"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "output_list_of_available_role.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.output_list_of_available_role sdk VNoval
    d <- newRefData fixture "output_list_of_available_role"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cid <- getp created "id"
    pure (ismap created && not (isNoval cid))

output_list_of_available_roleDirectTest :: Counters -> IO ()
output_list_of_available_roleDirectTest c = runTest c "output_list_of_available_role.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/output_list_of_available_role/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

output_list_of_mandatorInstanceTest :: Counters -> IO ()
output_list_of_mandatorInstanceTest c = runTest c "output_list_of_mandator.instance" $ do
  sdk <- C.testSdk0
  ent <- C.output_list_of_mandator sdk VNoval
  pure (eName ent == "output_list_of_mandator")

output_list_of_mandatorBasicTest :: Counters -> IO ()
output_list_of_mandatorBasicTest c = do
  fixture <- loadFixture "OutputListOfMandator"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "output_list_of_mandator.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.output_list_of_mandator sdk VNoval
    d <- newRefData fixture "output_list_of_mandator"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cid <- getp created "id"
    pure (ismap created && not (isNoval cid))

output_list_of_mandatorDirectTest :: Counters -> IO ()
output_list_of_mandatorDirectTest c = runTest c "output_list_of_mandator.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/output_list_of_mandator/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

output_list_of_moduleInstanceTest :: Counters -> IO ()
output_list_of_moduleInstanceTest c = runTest c "output_list_of_module.instance" $ do
  sdk <- C.testSdk0
  ent <- C.output_list_of_module sdk VNoval
  pure (eName ent == "output_list_of_module")

output_list_of_moduleBasicTest :: Counters -> IO ()
output_list_of_moduleBasicTest c = do
  fixture <- loadFixture "OutputListOfModule"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "output_list_of_module.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.output_list_of_module sdk VNoval
    d <- newRefData fixture "output_list_of_module"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cid <- getp created "id"
    pure (ismap created && not (isNoval cid))

output_list_of_moduleDirectTest :: Counters -> IO ()
output_list_of_moduleDirectTest c = runTest c "output_list_of_module.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/output_list_of_module/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

output_list_of_role_groupInstanceTest :: Counters -> IO ()
output_list_of_role_groupInstanceTest c = runTest c "output_list_of_role_group.instance" $ do
  sdk <- C.testSdk0
  ent <- C.output_list_of_role_group sdk VNoval
  pure (eName ent == "output_list_of_role_group")

output_list_of_role_groupBasicTest :: Counters -> IO ()
output_list_of_role_groupBasicTest c = do
  fixture <- loadFixture "OutputListOfRoleGroup"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "output_list_of_role_group.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.output_list_of_role_group sdk VNoval
    d <- newRefData fixture "output_list_of_role_group"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cid <- getp created "id"
    pure (ismap created && not (isNoval cid))

output_list_of_role_groupDirectTest :: Counters -> IO ()
output_list_of_role_groupDirectTest c = runTest c "output_list_of_role_group.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/output_list_of_role_group/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

output_list_of_transactions_historyInstanceTest :: Counters -> IO ()
output_list_of_transactions_historyInstanceTest c = runTest c "output_list_of_transactions_history.instance" $ do
  sdk <- C.testSdk0
  ent <- C.output_list_of_transactions_history sdk VNoval
  pure (eName ent == "output_list_of_transactions_history")

output_list_of_transactions_historyBasicTest :: Counters -> IO ()
output_list_of_transactions_historyBasicTest c = do
  fixture <- loadFixture "OutputListOfTransactionsHistory"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "output_list_of_transactions_history.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.output_list_of_transactions_history sdk VNoval
    d <- newRefData fixture "output_list_of_transactions_history"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cid <- getp created "id"
    pure (ismap created && not (isNoval cid))

output_list_of_transactions_historyDirectTest :: Counters -> IO ()
output_list_of_transactions_historyDirectTest c = runTest c "output_list_of_transactions_history.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/output_list_of_transactions_history/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

output_list_of_userInstanceTest :: Counters -> IO ()
output_list_of_userInstanceTest c = runTest c "output_list_of_user.instance" $ do
  sdk <- C.testSdk0
  ent <- C.output_list_of_user sdk VNoval
  pure (eName ent == "output_list_of_user")

output_list_of_userBasicTest :: Counters -> IO ()
output_list_of_userBasicTest c = do
  fixture <- loadFixture "OutputListOfUser"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "output_list_of_user.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.output_list_of_user sdk VNoval
    d <- newRefData fixture "output_list_of_user"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cid <- getp created "id"
    pure (ismap created && not (isNoval cid))

output_list_of_userDirectTest :: Counters -> IO ()
output_list_of_userDirectTest c = runTest c "output_list_of_user.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/output_list_of_user/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

output_provide_credentialInstanceTest :: Counters -> IO ()
output_provide_credentialInstanceTest c = runTest c "output_provide_credential.instance" $ do
  sdk <- C.testSdk0
  ent <- C.output_provide_credential sdk VNoval
  pure (eName ent == "output_provide_credential")

output_provide_credentialBasicTest :: Counters -> IO ()
output_provide_credentialBasicTest c = do
  fixture <- loadFixture "OutputProvideCredential"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "output_provide_credential.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.output_provide_credential sdk VNoval
    d <- newRefData fixture "output_provide_credential"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cid <- getp created "id"
    pure (ismap created && not (isNoval cid))

output_provide_credentialDirectTest :: Counters -> IO ()
output_provide_credentialDirectTest c = runTest c "output_provide_credential.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/output_provide_credential/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

output_register_userInstanceTest :: Counters -> IO ()
output_register_userInstanceTest c = runTest c "output_register_user.instance" $ do
  sdk <- C.testSdk0
  ent <- C.output_register_user sdk VNoval
  pure (eName ent == "output_register_user")

output_register_userBasicTest :: Counters -> IO ()
output_register_userBasicTest c = do
  fixture <- loadFixture "OutputRegisterUser"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "output_register_user.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.output_register_user sdk VNoval
    d <- newRefData fixture "output_register_user"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cid <- getp created "id"
    pure (ismap created && not (isNoval cid))

output_register_userDirectTest :: Counters -> IO ()
output_register_userDirectTest c = runTest c "output_register_user.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/output_register_user/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

output_remove_roleInstanceTest :: Counters -> IO ()
output_remove_roleInstanceTest c = runTest c "output_remove_role.instance" $ do
  sdk <- C.testSdk0
  ent <- C.output_remove_role sdk VNoval
  pure (eName ent == "output_remove_role")

output_remove_roleBasicTest :: Counters -> IO ()
output_remove_roleBasicTest c = do
  fixture <- loadFixture "OutputRemoveRole"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "output_remove_role.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.output_remove_role sdk VNoval
    d <- newRefData fixture "output_remove_role"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cid <- getp created "id"
    pure (ismap created && not (isNoval cid))

output_remove_roleDirectTest :: Counters -> IO ()
output_remove_roleDirectTest c = runTest c "output_remove_role.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/output_remove_role/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

output_resend_linkInstanceTest :: Counters -> IO ()
output_resend_linkInstanceTest c = runTest c "output_resend_link.instance" $ do
  sdk <- C.testSdk0
  ent <- C.output_resend_link sdk VNoval
  pure (eName ent == "output_resend_link")

output_resend_linkBasicTest :: Counters -> IO ()
output_resend_linkBasicTest c = do
  fixture <- loadFixture "OutputResendLink"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "output_resend_link.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.output_resend_link sdk VNoval
    d <- newRefData fixture "output_resend_link"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cid <- getp created "id"
    pure (ismap created && not (isNoval cid))

output_resend_linkDirectTest :: Counters -> IO ()
output_resend_linkDirectTest c = runTest c "output_resend_link.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/output_resend_link/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

output_reset_passwordInstanceTest :: Counters -> IO ()
output_reset_passwordInstanceTest c = runTest c "output_reset_password.instance" $ do
  sdk <- C.testSdk0
  ent <- C.output_reset_password sdk VNoval
  pure (eName ent == "output_reset_password")

output_reset_passwordBasicTest :: Counters -> IO ()
output_reset_passwordBasicTest c = do
  fixture <- loadFixture "OutputResetPassword"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "output_reset_password.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.output_reset_password sdk VNoval
    d <- newRefData fixture "output_reset_password"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cid <- getp created "id"
    pure (ismap created && not (isNoval cid))

output_reset_passwordDirectTest :: Counters -> IO ()
output_reset_passwordDirectTest c = runTest c "output_reset_password.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/output_reset_password/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

output_update_consumerInstanceTest :: Counters -> IO ()
output_update_consumerInstanceTest c = runTest c "output_update_consumer.instance" $ do
  sdk <- C.testSdk0
  ent <- C.output_update_consumer sdk VNoval
  pure (eName ent == "output_update_consumer")

output_update_consumerBasicTest :: Counters -> IO ()
output_update_consumerBasicTest c = do
  fixture <- loadFixture "OutputUpdateConsumer"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "output_update_consumer.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.output_update_consumer sdk VNoval
    d <- newRefData fixture "output_update_consumer"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cid <- getp created "id"
    pure (ismap created && not (isNoval cid))

output_update_consumerDirectTest :: Counters -> IO ()
output_update_consumerDirectTest c = runTest c "output_update_consumer.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/output_update_consumer/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

output_update_profileInstanceTest :: Counters -> IO ()
output_update_profileInstanceTest c = runTest c "output_update_profile.instance" $ do
  sdk <- C.testSdk0
  ent <- C.output_update_profile sdk VNoval
  pure (eName ent == "output_update_profile")

output_update_profileBasicTest :: Counters -> IO ()
output_update_profileBasicTest c = do
  fixture <- loadFixture "OutputUpdateProfile"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "output_update_profile.create" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.output_update_profile sdk VNoval
    d <- newRefData fixture "output_update_profile"
    ctrl <- emptyMap
    created <- eCreate ent d ctrl
    cid <- getp created "id"
    pure (ismap created && not (isNoval cid))

output_update_profileDirectTest :: Counters -> IO ()
output_update_profileDirectTest c = runTest c "output_update_profile.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/output_update_profile/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)

versionInstanceTest :: Counters -> IO ()
versionInstanceTest c = runTest c "version.instance" $ do
  sdk <- C.testSdk0
  ent <- C.version sdk VNoval
  pure (eName ent == "version")

versionBasicTest :: Counters -> IO ()
versionBasicTest c = do
  fixture <- loadFixture "Version"
  existing <- getp fixture "existing"
  opts <- jo [("entity", existing)]
  runTest c "version.load" $ do
    sdk <- C.testSdk opts VNoval
    ent <- C.version sdk VNoval
    entmap <- getp existing "version"
    ids <- keysof entmap
    case ids of
      [] -> pure True
      (id0 : _) -> do
        m <- jo [("id", VStr id0)]; ctrl <- emptyMap
        loaded <- eLoad ent m ctrl
        lid <- getp loaded "id"
        pure (ismap loaded && vstring lid == id0)

versionDirectTest :: Counters -> IO ()
versionDirectTest c = runTest c "version.direct" $ do
  calls <- newIORef (0 :: Int)
  let mock = VFunc (\_ _ _ _ -> do
        modifyIORef calls (+ 1)
        d <- jo [("id", VStr "direct01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk d)])
  sys <- jo [("fetch", mock)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  sdk <- C.newSdk opts
  args <- jo [("path", VStr "/version/x"), ("method", VStr "GET")]
  res <- F.direct sdk args
  ok <- getp res "ok"
  st <- getp res "status"
  dat <- getp res "data"
  did <- getp dat "id"
  n <- readIORef calls
  pure (isTrueV ok && toInt st == 200 && vstring did == "direct01" && n == 1)
