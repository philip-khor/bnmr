#' Access BNM API
#'
#' This function allows you to obtain data from the BNM API.
#' @param path Specifies the API path per https://apikijangportal.bnm.gov.my/
#' @param ... Additional arguments to httr::GET()
#' @examples
#' bnm_api("/welcome")
#' @noRd
#' @importFrom httr GET accept user_agent content http_type http_error status_code
#' @importFrom jsonlite fromJSON
#' @importFrom glue glue
#' @source https://apikijangportal.bnm.gov.my/, https://cran.r-project.org/web/packages/httr/vignettes/api-packages.html
#'

bnm_api <- function(path, ...) {
  GET("https://api.bnm.gov.my",
    path = glue("public{path}"),
    ...,
    accept("application/vnd.BNM.API.v1+json"),
    user_agent("http://github.com/philip-khor/bnmr/")
  ) -> resp

  parsed <- fromJSON(content(resp, "text", encoding = "UTF-8"))

  if (http_type(resp) != "application/json") {
    stop("API did not return json", call. = FALSE)
  }

  if (http_error(resp)) {
    stop(
      sprintf(
        "BNM API request failed [%s]\n%s\n<%s>",
        status_code(resp),
        parsed$message,
        parsed$documentation_url
      ),
      call. = TRUE
    )
  }

  structure(
    list(
      content = parsed,
      path = path,
      response = resp
    ),
    class = "bnm_api"
  )
}

#' Get BNM Data as tibble
#'
#' @param path Specifies the API path per https://apikijangportal.bnm.gov.my/
#' @importFrom tibble as_tibble
#' @importFrom purrr discard
#' @noRd
get_bnm_tbl <- function(path, ...) {
  as_tibble(discard(get_bnm_data(path, ...), is.null))
}

#' Get BNM Data
#'
#' This function allows you to obtain data from the BNM API.
#' @param path Specifies the API path per https://apikijangportal.bnm.gov.my/
#' @param ... Additional arguments to be passed to bnm_api
#' @keywords internal cats
#' @examples
#' get_bnm_data("/welcome")
#' @noRd
#' @source https://apikijangportal.bnm.gov.my/

get_bnm_data <- function(path, ...) {
  bnm_api(path, ...)[["content"]][["data"]]
}
