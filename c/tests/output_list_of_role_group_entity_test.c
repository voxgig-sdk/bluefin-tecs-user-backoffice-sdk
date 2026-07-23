// Generated instance test for the output_list_of_role_group entity.

#include "ctest.h"

int main(void) {
  BluefinTecsUserBackofficeSDK* sdk = test_sdk(NULL, NULL);
  CHECK(sdk != NULL, "sdk constructed");

  Entity* e = bluefintecsuserbackoffice_output_list_of_role_group(sdk, NULL);
  CHECK(e != NULL, "entity instance");
  CHECK_STR_EQ(e->vt->get_name(e), "output_list_of_role_group", "entity get_name");

  TEST_SUMMARY("output_list_of_role_group_entity");
}
