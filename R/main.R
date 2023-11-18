#' Access BNM API
#'
#' This function allows you to obtain data from the BNM API.
#' @param path Specifies the API path per https://apikijangportal.bnm.gov.my/
#' @param ... Additional arguments to httr::GET()
#' @examples
#' bnm_api("/welcome")
#' @noRd
#' @importFrom httr2 request req_url_path req_user_agent req_headers req_perform resp_check_content_type
#' resp_is_error resp_status resp_status_desc resp_body_json
#' @importFrom glue glue
#' @source https://apikijangportal.bnm.gov.my/, https://cran.r-project.org/web/packages/httr/vignettes/api-packages.html
#'
bnm_api_req <- function(path, ...) {
  request("https://api.bnm.gov.my") |>
    req_url_path(glue("public{path}")) |>
    req_user_agent("http://github.com/philip-khor/bnmr/") |>
    req_headers(Accept = "application/vnd.BNM.API.v1+json", ...)
}

bnm_api <- function(path, ...) {
  bnm_api_req(path, ...) |>
    req_perform() -> resp

  try(resp_check_content_type(resp, "application/json"))

  if (resp_is_error(resp)) {
    stop(
      sprintf(
        "BNM API request failed [%s]\n%s\n<%s>",
        resp_status(resp),
        resp_status_desc(resp)
      ),
      call. = TRUE
    )
  }

  resp_body_json(resp, encoding = "UTF-8") -> parsed

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
#' @importFrom purrr discard map list_rbind
#' @importFrom tidyr unnest_wider
#' @importFrom vctrs vec_size
#' @noRd
get_bnm_tbl <- function(path, ...) {
  get_bnm_data(path, ...) |>
    discard(is.null) -> dat
  if (vec_size(dat) == 1) {
    tibble(dat)
  } else {
    tibble(dat) |> unnest_wider(dat)
  }
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
