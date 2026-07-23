// Generated instance test for the output_reset_password entity.

#include "ctest.h"

int main(void) {
  BluefinTecsUserBackofficeSDK* sdk = test_sdk(NULL, NULL);
  CHECK(sdk != NULL, "sdk constructed");

  Entity* e = bluefintecsuserbackoffice_output_reset_password(sdk, NULL);
  CHECK(e != NULL, "entity instance");
  CHECK_STR_EQ(e->vt->get_name(e), "output_reset_password", "entity get_name");

  TEST_SUMMARY("output_reset_password_entity");
}
