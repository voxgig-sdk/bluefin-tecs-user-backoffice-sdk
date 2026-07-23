// Generated instance test for the output_get_kyc_document entity.

#include "ctest.h"

int main(void) {
  BluefinTecsUserBackofficeSDK* sdk = test_sdk(NULL, NULL);
  CHECK(sdk != NULL, "sdk constructed");

  Entity* e = bluefintecsuserbackoffice_output_get_kyc_document(sdk, NULL);
  CHECK(e != NULL, "entity instance");
  CHECK_STR_EQ(e->vt->get_name(e), "output_get_kyc_document", "entity get_name");

  TEST_SUMMARY("output_get_kyc_document_entity");
}
