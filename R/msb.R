.get_msb_data <- function(section, year = NULL, ...) {

  args <- list(...)

  path <- paste0("/msb/", section)
  if (is_null(year)) {
    get_bnm_data(path, query = args)
  } else {
    assert_that(is_scalar_integerish(year))
    assert_that(year > 1900 && year < 2100)
    get_bnm_data(paste0(path, "/year/", as.integer(year)), query = args)
  }
}
#' MSB Data
#' @describeIn msb 1.1 Reserve Money
#' @param year Scalar integer
#' @examples
#' \dontrun{get_reserve_money()}
#' \dontrun{get_reserve_money(year = 2010)}
#' @seealso \code{\link{msb_loans}}, \code{\link{msb_deposits}}
#' @importFrom assertthat assert_that
#' @export
get_reserve_money <- function(year = NULL) {
  .get_msb_data("1.1", year = year)
}

#' @describeIn msb 1.2 Currency in circulation by denomination
#' @export
get_curr_in_circ_by_denom <- function(year = NULL) {
  .get_msb_data("1.2", year = year)
}

#' @describeIn msb 1.3 Monetary aggregates
#' @export
get_monetary_agg <- function(year = NULL) {
  .get_msb_data("1.3", year = year)
}

#' @describeIn msb 1.3.1 Broad Money, M3
#' @export
get_m3 <- function(year = NULL) {
  .get_msb_data("1.3.1", year = year)
}

#' @describeIn msb 1.3.2 Factors affecting M3
#' @export
get_m3_factors <- function(year = NULL) {
  .get_msb_data("1.3.2", year = year)
}

#' @describeIn msb 1.4 Bank Negara Malaysia: Statement of Assets
#' @export
get_bnm_stmt_assets <- function(year = NULL) {
  .get_msb_data("1.4", year = year)
}

#' @describeIn msb 1.5 Bank Negara Malaysia: Statement of Capital and Liabilities
#' @export
get_bnm_stmt_cap_lbl <- function(year = NULL) {
  .get_msb_data("1.5", year = year)
}

#' @describeIn msb 1.6 Bank Negara Malaysia's Special Funds
#' @export
get_bnm_special_funds <- function(year = NULL) {
  .get_msb_data("1.6", year = year)
}

#' @describeIn msb 1.7 Banking System: Statement of Assets
#' @export
get_sys_stmt_assets <- function(year = NULL) {
  .get_msb_data("1.7", year = year)
}

#' @describeIn msb 1.7.1 Islamic Banking System: Statement of Assets
#' @export
get_islm_stmt_assets <- function(year = NULL, type = "commercial") {
  # type seems to be ignored if year specified
  .get_msb_data("1.7.1", year = year, type = type)
}

# 1.7.2?
# 1.7.3?
# 1.7.4?

#' @describeIn msb 1.9 Banking System: Statement of Capital and Liabilities
#' @export
get_sys_stmt_cap_lbl <- function(year = NULL) {
  .get_msb_data("1.9", year = year)
}

#' @describeIn msb 1.9.1 Islamic Banking System: Statement of Capital and Liabilities
#' @export
get_islm_stmt_cap_lbl <- function(year = NULL, type = "commercial") {
  # type seems to be ignored if year specified
  .get_msb_data("1.9.1", year = year, type = type)
}

#' MSB Conventional loans and Islamic financing
#' @param Year Scalar integer
#' @param type Banking institution type; one of "commercial" "islamic" "investment" "total"
#' @describeIn msb_loans 1.10 Banking System: Loans Applied by Purpose
#' @export
get_sys_loans_appl_purpose <- function(year = NULL, type = "commercial") {
  .get_msb_data("1.10", year = year, type = type)
}

#' @describeIn msb_loans 1.11 Banking System: Loans Applied by Sector
#' @export
get_sys_loans_appl_sector <- function(year = NULL, type = "commercial") {
  .get_msb_data("1.11", year = year, type = type)
}

#' @describeIn msb_loans 1.12 Banking System: Loans Approved by Purpose
#' @export
get_sys_loans_apprv_purpose <- function(year = NULL, type = "commercial") {
  .get_msb_data("1.12", year = year, type = type)
}

#' @describeIn msb_loans 1.13 Banking System: Loans Approved by Sector
#' @export
get_sys_loans_apprv_sector <- function(year = NULL, type = "commercial") {
  .get_msb_data("1.13", year = year, type = type)
}

#' @describeIn msb_loans 1.14 Banking System: Loans Disbursed by Purpose
#' @export
get_sys_loans_disb_purpose <- function(year = NULL, type = "commercial") {
  .get_msb_data("1.14", year = year, type = type)
}

#' @describeIn msb_loans 1.15 Banking System: Loans Disbursed by Sector
#' @export
get_sys_loans_disb_sector <- function(year = NULL, type = "commercial") {
  .get_msb_data("1.15", year = year, type = type)
}

#' @describeIn msb_loans 1.16 Banking System: Loans Repaid by Purpose
#' @export
get_sys_loans_repay_purpose <- function(year = NULL, type = "commercial") {
  .get_msb_data("1.16", year = year, type = type)
}

#' @describeIn msb_loans 1.17 Banking System: Loans Repaid by Sector
#' @export
get_sys_loans_repay_sector <- function(year = NULL, type = "commercial") {
  .get_msb_data("1.17", year = year, type = type)
}

#' @describeIn msb_loans 1.18 Banking System: Classification of Loans by Type
#' @export
get_sys_loans_class_type <- function(year = NULL, type = "commercial") {
  .get_msb_data("1.18", year = year, type = type)
}

#' @describeIn msb_loans 1.18.1: Islamic Banking System: Financing by Type
#' @export
get_islm_fin_class_type <- function(year = NULL, type = "commercial") {
  .get_msb_data("1.18.1", year = year, type = type)
}

#' @describeIn msb_loans 1.18.2: Islamic Banking System: Financing by Concept
#' @export
get_islm_fin_class_concept <- function(year = NULL, type = "commercial") {
  .get_msb_data("1.18.2", year = year, type = type)
}

#' @describeIn msb_loans 1.19 Banking System: Classification of Loans by Purpose
#' @export
get_sys_loans_class_purpose <- function(year = NULL, type = "commercial") {
  .get_msb_data("1.19", year = year, type = type)
}

#' @describeIn msb_loans 1.19.1 Islamic Banking System: Financing by Purpose and Sectors
#' @export
get_islm_fin_purpose_sector <- function(year = NULL, type = "commercial") {
  .get_msb_data("1.19.1", year = year, type = type)
}

#' @describeIn msb_loans 1.20 Banking System: Classification of Loans by Sector
#' @export
get_sys_loans_class_sector <- function(year = NULL, type = "commercial") {
  .get_msb_data("1.20", year = year, type = type)
}

#' @describeIn msb_loans 1.21 Banking System: Non-Performing Loans/Impaired Loans and Impairment Provisions
#' @export
get_sys_npl_provisions <- function(year = NULL) {
  if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("1.21", year = year)
}

#' @describeIn msb_loans 1.21a Banking System: Impaired Loans and Impairment Provisions
#' @export
get_sys_imp_loans_provisions <- function(year = NULL) {
  .get_msb_data("1.21a", year = year)
}

#' @describeIn msb_loans 1.21b Banking System: Impaired Loan/Financing and Provisions
#' @export
get_sys_imp_loans_fin_provisions <- function(year = NULL) {
  .get_msb_data("1.21b", year = year)
}

#' @describeIn msb_loans 1.21.1a Islamic Banking System: Impaired Financing and Impairment Provisions
#' @export
get_islm_imp_fin_provisions <- function(year = NULL) {
  .get_msb_data("1.21.1a", year = year)
}

# TODO: @describeIn msb_loans 1.21.2a Commercial Banks and Islamic Banks: Impaired Loans and Impairment Provisions
# TODO: @export
# FUNCTION_NAME  <- function(year = NULL) {
#   .get_msb_data("1.21.2a", year = year)
# }

# TODO: 1.21.3a Investment Banks: Impaired Loans and Impairment Provisions
# FUNCTION_NAME <- function(year = NULL) {
#   .get_msb_data("1.21.3a", year = year)
# }

#' @describeIn msb_loans 1.22 Banking System: Non-Performing/Impaired Loans by Purpose
#' @export
get_sys_npl_purpose <- function(year = NULL) {
  if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("1.22", year = year)
}

#' @describeIn msb_loans 1.23 Banking System: Non-Performing/Impaired Loans by Sector
#' @export
get_sys_npl_sector <- function(year = NULL) {
  if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("1.23", year = year)
}

#' MSB Deposits
#' @param Year Scalar integer
#' @describeIn msb_deposits 1.24 Banking System: Total Deposits by Type
#' @export
get_sys_deps_type <- function(year = NULL) {
  if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("1.24", year = year)
}

#' @describeIn msb_deposits 1.24.2 Islamic Banking System - Deposits by Type & Holder
#' @export
get_islm_deps_type_holder <- function(year = NULL, type = "commercial") {
  .get_msb_data("1.24.2", year = year, type = type)
}

#' @describeIn msb_deposits 1.25 Banking System: Total Deposits by Holder
#' @export
get_sys_deps_holder <- function(year = NULL) {
  if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("1.25", year = year)
}

#' @describeIn msb_deposits 1.25.1 Banking System: Demand Deposits by Holder
#' @param ins One of "commercial", "islamic"
#' @export
get_sys_dd_holder <- function(year = NULL, ins = "commercial") {
  assert_that(ins %in% c("commercial", "islamic"))
  .get_msb_data("1.25.1", year = year)
}

#' @describeIn msb_deposits 1.25.2 Banking System: Savings and Fixed Deposits,
#' Special and General Investment Deposits by Holder
#' @export
get_sys_sav_fd_deps_holder <- function(year = NULL, ins = "commercial") {
  assert_that(ins %in% c("commercial", "islamic"))
  .get_msb_data("1.25.2", year = year)
}

#' @describeIn msb_deposits 1.25.3 Banking System: Repurchase Agreements by Holder
#' @export
get_sys_repo_holder <- function(year = NULL, ins = "commercial") {
  assert_that(ins %in% c("commercial", "islamic"))
  .get_msb_data("1.25.3", year = year)
}

# TODO: @describeIn msb_deposits 1.25.4 Banking System: Negotiable Instruments of
# Deposits by Holder
#'
# TODO: 1.25.5
# TODO: 1.25.6

#' @describeIn msb 1.27 Statutory Reserve and Liquid Asset Requirement
#' @export
get_stry_lqa_req <- function(year = NULL) {
  if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("1.27", year = year)
}

# TODO: 1.28a
# TODO: 1.29a
# TODO: 1.29.1a

#' @describeIn msb 1.30 Credit Card Operations in Malaysia
#' @export
get_cc_mas <- function(year = NULL) {
  if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("1.30", year = year)
}

#' @describeIn msb 1.31 Banking System: Loan to Fund Ratio, Loan to Fund and Equity Ratio and Outstanding Surplus Liquidity placed with Bank Negara Malaysia
#' @export
get_sys_lf_ratio <- function(year = NULL) {
  if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("1.31", year = year)
}

#' @describeIn msb 1.32 Islamic Banking System: Total Investment Account by Type and Holder
#' @export
get_islm_inv <- function(year = NULL) {
  if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("1.32", year = year)
}
# TODO: 1.32.1
# TODO: 1.32.2
# TODO: 1.32.3
# TODO: 1.32.4
# TODO: 1.32.5
