// Generated instance test for the output_update_consumer entity.

#include "ctest.h"

int main(void) {
  BluefinTecsUserBackofficeSDK* sdk = test_sdk(NULL, NULL);
  CHECK(sdk != NULL, "sdk constructed");

  Entity* e = bluefintecsuserbackoffice_output_update_consumer(sdk, NULL);
  CHECK(e != NULL, "entity instance");
  CHECK_STR_EQ(e->vt->get_name(e), "output_update_consumer", "entity get_name");

  TEST_SUMMARY("output_update_consumer_entity");
}
