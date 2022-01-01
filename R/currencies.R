#' Renminbi
#'
#' Extract indicative CNY/MYR
#' forward prices for trade settlement and RMB deposit acceptance rates
#' from the BNM API as a tidy tibble.
#' @param type String. Either "dar" or "fx_forward".
#' @keywords rates_and_volumes
#' @importFrom tidyr spread unnest
#' @importFrom tibble tibble
#' @importFrom purrr map_dbl
#' @importFrom rlang .data
#' @examples
#' \dontrun{renminbi(type = "dar")}
#' renminbi(type = "fx_forward")
#' @source https://apikijangportal.bnm.gov.my/
#' @export

renminbi <- function(type = "dar") {
  stopifnot(type %in% c("dar", "fx_forward"))
  paths <- c(
    dar = "/renminbi-deposit-acceptance-rate",
    fx_forward = "/renminbi-fx-forward-price"
  )


  if (type == "dar") {
    rmb_tibble <- get_bnm_tbl(paths[[type]])
    rmb_tibble[["term"]] <- names(rmb_tibble[["deposit"]])
    spread(unnest(rmb_tibble, cols = c(.data[["deposit"]])), "term", "deposit")
  }
  else {
    fx_forward_list <- bnm_api(paths[[type]])[["content"]][["data"]]
    tibble(
      date = fx_forward_list[["date"]],
      period = c("spot", "2_weeks", "1_month", "2_months", "3_months", "4_months", "5_months", "6_months"),
      buying = map_dbl(period, ~ fx_forward_list[["buying"]][[.]]),
      selling = map_dbl(period, ~ fx_forward_list[["selling"]][[.]])
    )
  }
}

