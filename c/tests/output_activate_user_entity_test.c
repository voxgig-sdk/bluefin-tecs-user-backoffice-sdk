// Generated instance test for the output_activate_user entity.

#include "ctest.h"

int main(void) {
  BluefinTecsUserBackofficeSDK* sdk = test_sdk(NULL, NULL);
  CHECK(sdk != NULL, "sdk constructed");

  Entity* e = bluefintecsuserbackoffice_output_activate_user(sdk, NULL);
  CHECK(e != NULL, "entity instance");
  CHECK_STR_EQ(e->vt->get_name(e), "output_activate_user", "entity get_name");

  TEST_SUMMARY("output_activate_user_entity");
}
