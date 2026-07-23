// Aggregating entry point for the generated per-entity SDK tests. Drives
// every <Entity>EntityTest / <Entity>DirectTest object through one shared
// SdkTestReport and exits non-zero on any failure.
// Run: scala-cli run . --main-class SdkEntityTestMain

object SdkEntityTestMain {

  def main(args: Array[String]): Unit = {
    val rep = new SdkTestReport()

    OutputActivateDigitalModuleEntityTest.run(rep)
    OutputActivatePortalModuleEntityTest.run(rep)
    OutputActivateStoreModuleEntityTest.run(rep)
    OutputActivateUserEntityTest.run(rep)
    OutputAssignRoleEntityTest.run(rep)
    OutputChangeLogoEntityTest.run(rep)
    OutputCreateMandatorEntityTest.run(rep)
    OutputCreateServiceUserEntityTest.run(rep)
    OutputDeactivateUserEntityTest.run(rep)
    OutputGetKycDocumentEntityTest.run(rep)
    OutputGetLogoEntityTest.run(rep)
    OutputGetLogoDirectTest.run(rep)
    OutputListOfAvailableRoleEntityTest.run(rep)
    OutputListOfMandatorEntityTest.run(rep)
    OutputListOfModuleEntityTest.run(rep)
    OutputListOfRoleGroupEntityTest.run(rep)
    OutputListOfTransactionsHistoryEntityTest.run(rep)
    OutputListOfUserEntityTest.run(rep)
    OutputProvideCredentialEntityTest.run(rep)
    OutputRegisterUserEntityTest.run(rep)
    OutputRemoveRoleEntityTest.run(rep)
    OutputResendLinkEntityTest.run(rep)
    OutputResetPasswordEntityTest.run(rep)
    OutputUpdateConsumerEntityTest.run(rep)
    OutputUpdateProfileEntityTest.run(rep)
    VersionEntityTest.run(rep)
    VersionDirectTest.run(rep)

    ReadmeExamplesTest.run(rep)

    rep.finish("ENTITY")
  }
}
