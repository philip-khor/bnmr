.onLoad <- function(libname, pkgname) {
  packageStartupMessage("BNM Open API")
  packageStartupMessage("Please visit https://api.bnm.gov.my/disclaimer to view disclaimers.")
  packageStartupMessage(bnm_api("/welcome")$content$api)
  }
