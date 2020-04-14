#' Renminbi
#'
#' This function allows you to extract indicative CNY/MYR
#' forward prices for trade settlement and RMB deposit acceptance rates
#' from the BNM API.
#' @param type "dar" for Deposit Acceptance Rate and "fx_forward" for FX Forward Prices
#' @keywords ...
#' @examples
#' renminbi(type = "dar")
#' renminbi(type = "fx_forward")
#' @export
#' @source https://api.bnm.gov.my/
#'
#'
#'
renminbi <- function(type = "dar") {
  stopifnot(type %in% c("dar", "fx_forward"))
  paths <- c(
    dar = "/renminbi-deposit-acceptance-rate",
    fx_forward = "/renminbi-fx-forward-price"
  )
  get_bnm_data(paths[[type]])
}

#' Renminbi tibbles
#'
#' (WORK IN PROGRESS) This function allows you to extract indicative CNY/MYR
#' forward prices for trade settlement and RMB deposit acceptance rates
#' from the BNM API as a tidy tibble.
#' @inheritParams renminbi
#' @keywords ...
#' @importFrom tidyr spread gather unnest
#' @examples
#' renminbi_tbl()
#' renminbi_tbl(type = "dar")
#' renminbi_tbl(type = "fx_forward")
#' @source https://api.bnm.gov.my/
#' @export

renminbi_tbl <- function(type = "dar") {
  stopifnot(type %in% c("dar", "fx_forward"))
  paths <- c(
    dar = "/renminbi-deposit-acceptance-rate",
    fx_forward = "/renminbi-fx-forward-price"
  )
  rmb_tibble <- get_bnm_tbl(paths[[type]])

  if (missing(type) | type == "dar") {
    rmb_tibble[["term"]] <- names(rmb_tibble[["deposit"]])
    spread(unnest(rmb_tibble), "term", "deposit")
  }
  else {
    warning("terms will not be returned: work in progress")
    # still trying to figure out how best to preserve terms here
    rmb_tibble <- gather(rmb_tibble, "key", "val", -date)
    rmb_tibble[["term"]] <- names(rmb_tibble[["val"]])
    # problem with this line of code: gather strips away
    # list names
    unnest(rmb_tibble)
  }
}

