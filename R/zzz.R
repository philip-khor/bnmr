.onAttach <- function(libname, pkgname) {
  packageStartupMessage("BNM Open API")
  packageStartupMessage("Please visit https://api.bnm.gov.my/disclaimer to view disclaimers.")
  tryCatch(
    packageStartupMessage(bnm_api("/welcome")$content$api),
    error = function(e) {
      "Cannot access API. Please check your internet connection."
    }
  )
}
