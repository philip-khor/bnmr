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

#' Monetary and banking system 
#' @param year Scalar integer
#' @param type Banking institution type; one of "commercial" "islamic" "investment" "total"
#' @param capital One of "ibs", "islamic", "total"
#' @name msb1
NULL

#' @describeIn msb1 1.1 Reserve Money
#' @examples
#' \dontrun{get_reserve_money()}
#' \dontrun{get_reserve_money(year = 2010)}
#' @seealso \code{\link{msb1_loans}}, \code{\link{msb1_deposits}}
#' @importFrom assertthat assert_that
#' @export
get_reserve_money <- function(year = NULL) {
  .get_msb_data("1.1", year = year)
}

#' @describeIn msb1 1.2 Currency in circulation by denomination
#' @export
get_curr_in_circ_by_denom <- function(year = NULL) {
  .get_msb_data("1.2", year = year)
}

#' @describeIn msb1 1.3 Monetary aggregates
#' @export
get_monetary_agg <- function(year = NULL) {
  .get_msb_data("1.3", year = year)
}

#' @describeIn msb1 1.3.1 Broad Money, M3
#' @export
get_m3 <- function(year = NULL) {
  .get_msb_data("1.3.1", year = year)
}

#' @describeIn msb1 1.3.2 Factors affecting M3
#' @export
get_m3_factors <- function(year = NULL) {
  .get_msb_data("1.3.2", year = year)
}

#' @describeIn msb1 1.4 Bank Negara Malaysia: Statement of Assets
#' @export
get_bnm_stmt_assets <- function(year = NULL) {
  .get_msb_data("1.4", year = year)
}

#' @describeIn msb1 1.5 Bank Negara Malaysia: Statement of Capital and Liabilities
#' @export
get_bnm_stmt_cap_lbl <- function(year = NULL) {
  .get_msb_data("1.5", year = year)
}

#' @describeIn msb1 1.6 Bank Negara Malaysia's Special Funds
#' @export
get_bnm_special_funds <- function(year = NULL) {
  .get_msb_data("1.6", year = year)
}

#' @describeIn msb1 1.7 Banking System: Statement of Assets
#' @export
get_sys_stmt_assets <- function(year = NULL) {
  .get_msb_data("1.7", year = year)
}

#' @describeIn msb1 1.7.1 Islamic Banking System: Statement of Assets
#' @export
get_islm_stmt_assets <- function(year = NULL, type = "commercial") {
  # type seems to be ignored if year specified
  .get_msb_data("1.7.1", year = year, type = type)
}

# 1.7.2?
# 1.7.3?
# 1.7.4?

#' @describeIn msb1 1.9 Banking System: Statement of Capital and Liabilities
#' @export
get_sys_stmt_cap_lbl <- function(year = NULL) {
  .get_msb_data("1.9", year = year)
}

#' @describeIn msb1 1.9.1 Islamic Banking System: Statement of Capital and Liabilities
#' @export
get_islm_stmt_cap_lbl <- function(year = NULL, type = "commercial") {
  # type seems to be ignored if year specified
  .get_msb_data("1.9.1", year = year, type = type)
}

#' Monetary and banking system: conventional loans and Islamic financing
#' @param year Scalar integer
#' @param type Banking institution type; one of "commercial" "islamic" "investment" "total"
#' @name msb1_loans
NULL

#' @describeIn msb1_loans 1.10 Banking System: Loans Applied by Purpose
#' @export
get_sys_loans_appl_purpose <- function(year = NULL, type = "commercial") {
  .get_msb_data("1.10", year = year, type = type)
}

#' @describeIn msb1_loans 1.11 Banking System: Loans Applied by Sector
#' @export
get_sys_loans_appl_sector <- function(year = NULL, type = "commercial") {
  .get_msb_data("1.11", year = year, type = type)
}

#' @describeIn msb1_loans 1.12 Banking System: Loans Approved by Purpose
#' @export
get_sys_loans_apprv_purpose <- function(year = NULL, type = "commercial") {
  .get_msb_data("1.12", year = year, type = type)
}

#' @describeIn msb1_loans 1.13 Banking System: Loans Approved by Sector
#' @export
get_sys_loans_apprv_sector <- function(year = NULL, type = "commercial") {
  .get_msb_data("1.13", year = year, type = type)
}

#' @describeIn msb1_loans 1.14 Banking System: Loans Disbursed by Purpose
#' @export
get_sys_loans_disb_purpose <- function(year = NULL, type = "commercial") {
  .get_msb_data("1.14", year = year, type = type)
}

#' @describeIn msb1_loans 1.15 Banking System: Loans Disbursed by Sector
#' @export
get_sys_loans_disb_sector <- function(year = NULL, type = "commercial") {
  .get_msb_data("1.15", year = year, type = type)
}

#' @describeIn msb1_loans 1.16 Banking System: Loans Repaid by Purpose
#' @export
get_sys_loans_repay_purpose <- function(year = NULL, type = "commercial") {
  .get_msb_data("1.16", year = year, type = type)
}

#' @describeIn msb1_loans 1.17 Banking System: Loans Repaid by Sector
#' @export
get_sys_loans_repay_sector <- function(year = NULL, type = "commercial") {
  .get_msb_data("1.17", year = year, type = type)
}

#' @describeIn msb1_loans 1.18 Banking System: Classification of Loans by Type
#' @export
get_sys_loans_class_type <- function(year = NULL, type = "commercial") {
  .get_msb_data("1.18", year = year, type = type)
}

#' @describeIn msb1_loans 1.18.1: Islamic Banking System: Financing by Type
#' @export
get_islm_fin_class_type <- function(year = NULL, type = "commercial") {
  .get_msb_data("1.18.1", year = year, type = type)
}

#' @describeIn msb1_loans 1.18.2: Islamic Banking System: Financing by Concept
#' @export
get_islm_fin_class_concept <- function(year = NULL, type = "commercial") {
  .get_msb_data("1.18.2", year = year, type = type)
}

#' @describeIn msb1_loans 1.19 Banking System: Classification of Loans by Purpose
#' @export
get_sys_loans_class_purpose <- function(year = NULL, type = "commercial") {
  .get_msb_data("1.19", year = year, type = type)
}

#' @describeIn msb1_loans 1.19.1 Islamic Banking System: Financing by Purpose and Sectors
#' @export
get_islm_fin_purpose_sector <- function(year = NULL, type = "commercial") {
  .get_msb_data("1.19.1", year = year, type = type)
}

#' @describeIn msb1_loans 1.20 Banking System: Classification of Loans by Sector
#' @export
get_sys_loans_class_sector <- function(year = NULL, type = "commercial") {
  .get_msb_data("1.20", year = year, type = type)
}

#' @describeIn msb1_loans 1.21 Banking System: Non-Performing Loans/Impaired Loans and Impairment Provisions
#' @export
get_sys_npl_provisions <- function(year = NULL) {
  if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("1.21", year = year)
}

#' @describeIn msb1_loans 1.21a Banking System: Impaired Loans and Impairment Provisions
#' @export
get_sys_imp_fin_provisions <- function(year = NULL) {
  .get_msb_data("1.21a", year = year)
}

#' @describeIn msb1_loans 1.21b Banking System: Impaired Loan/Financing and Provisions
#' @export
get_sys_imp_fin_provisions <- function(year = NULL) {
  .get_msb_data("1.21b", year = year)
}

#' @describeIn msb1_loans 1.21.1a Islamic Banking System: Impaired Financing and Impairment Provisions
#' @export
get_islm_imp_fin_provisions <- function(year = NULL) {
  .get_msb_data("1.21.1a", year = year)
}

# TODO: @describeIn msb1_loans 1.21.2a Commercial Banks and Islamic Banks: Impaired Loans and Impairment Provisions
# TODO: @export
get_all_imp_fin_provisions  <- function(year = NULL) {
  .get_msb_data("1.21.2a", year = year)
}

# TODO: 1.21.3a Investment Banks: Impaired Loans and Impairment Provisions
get_inv_imp_fin_provisions <- function(year = NULL) {
  .get_msb_data("1.21.3a", year = year)
}

#' @describeIn msb1_loans 1.22 Banking System: Non-Performing/Impaired Loans by Purpose
#' @export
get_sys_npl_purpose <- function(year = NULL) {
  if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("1.22", year = year)
}

#' @describeIn msb1_loans 1.23 Banking System: Non-Performing/Impaired Loans by Sector
#' @export
get_sys_npl_sector <- function(year = NULL) {
  if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("1.23", year = year)
}

#' Monetary and banking system: deposits
#' @name msb1_deposits
#' @param year Scalar integer
#' @param type Banking institution type; one of "commercial" "islamic" "investment" "total"
NULL

#' @describeIn msb1_deposits 1.24 Banking System: Total Deposits by Type
#' @export
get_sys_deps_type <- function(year = NULL) {
  if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("1.24", year = year)
}

#' @describeIn msb1_deposits 1.24.2 Islamic Banking System - Deposits by Type & Holder
#' @export
get_islm_deps_type_holder <- function(year = NULL, type = "commercial") {
  .get_msb_data("1.24.2", year = year, type = type)
}

#' @describeIn msb1_deposits 1.25 Banking System: Total Deposits by Holder
#' @export
get_sys_deps_holder <- function(year = NULL) {
  if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("1.25", year = year)
}

#' @describeIn msb1_deposits 1.25.1 Banking System: Demand Deposits by Holder
#' @param ins One of "commercial", "islamic"
#' @export
get_sys_dd_holder <- function(year = NULL, ins = "commercial") {
  assert_that(ins %in% c("commercial", "islamic"))
  .get_msb_data("1.25.1", year = year)
}

#' @describeIn msb1_deposits 1.25.2 Banking System: Savings and Fixed Deposits,
#' Special and General Investment Deposits by Holder
#' @export
get_sys_sav_fd_deps_holder <- function(year = NULL, ins = "commercial") {
  assert_that(ins %in% c("commercial", "islamic"))
  .get_msb_data("1.25.2", year = year)
}

#' @describeIn msb1_deposits 1.25.3 Banking System: Repurchase Agreements by Holder
#' @export
get_sys_repo_holder <- function(year = NULL, ins = "commercial") {
  assert_that(ins %in% c("commercial", "islamic"))
  .get_msb_data("1.25.3", year = year)
}

#' @describeIn msb1_deposits 1.25.4 Banking System: Negotiable Instruments of
#' Deposits by Holder
#' @export
get_sys_nid_holder <- function(year = NULL, type = "total") {
  # type and fin_ins have the same value constraints
  # TODO: can we somehow shift the assertion check to .get_msb_data? 
  assert_that(type %in% c("commercial", "islamic", "investment", "total"))
  .get_msb_data("1.25.4", year = year, fin_ins = type)
}

#' @describeIn msb1_deposits 1.25.5 Banking System: Foreign Currency
#' and Other Deposits by Holder
#' @export
get_sys_fc_deps_holder <- function(year = NULL, type = "total") {
  assert_that(type %in% c("commercial", "islamic", "investment", "total"))
  .get_msb_data("1.25.5", year = year, fin_ins = type)
}
#' @describeIn msb1_deposits 1.25.6 Banking System: Fixed Deposits,
#' Special Investment Deposits and General Deposit Investment by Original Maturity
#' @export
get_sys_fd_maturity <- function(year = NULL, type = "total") {
  assert_that(type %in% c("commercial", "islamic", "investment", "total"))
  .get_msb_data("1.25.6", year = year, fin_ins = type)
}

#' @describeIn msb1 1.27 Statutory Reserve and Liquid Asset Requirement
#' @export
get_stry_lqa_req <- function(year = NULL) {
  if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("1.27", year = year)
}

#' @describeIn msb1 1.28a Liquidity Coverage Ratio
#' @export
get_liq_cov_rt <- function(year = NULL) {
  # seems to be only available from 2015 onwards
  if (!is_null(year)) assert_that(year >= 2015)
  .get_msb_data("1.28a", year = year)
}

#' @describeIn msb1 1.29a Banking System: Constituents of Capital
#' @export
get_sys_const_cap <- function(year = NULL) {
  # seems to be only available from 2013 onwards
  if (!is_null(year)) assert_that(year >= 2013)
  .get_msb_data("1.29a", year = year)
}

#' @describeIn msb1 1.29.1a Islamic Banking System : Constituents of Capital
#' @export
get_islm_const_cap <- function(year = NULL, capital = "total") {
  # seems to be only available from 2013 onwards
  if (!is_null(year)) assert_that(year >= 2013)
  assert_that(capital %in% c("ibs", "islamic", "total"))
  .get_msb_data("1.29.1a", year = year, capital = capital)
}

#' @describeIn msb1 1.30 Credit Card Operations in Malaysia
#' @export
get_cc_mas <- function(year = NULL) {
  if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("1.30", year = year)
}

#' @describeIn msb1 1.31 Banking System: Loan to Fund Ratio, Loan to Fund and Equity Ratio and Outstanding Surplus Liquidity placed with Bank Negara Malaysia
#' @export
get_sys_lf_ratio <- function(year = NULL) {
  if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("1.31", year = year)
}

#' @describeIn msb1 1.32 Islamic Banking System: Total Investment Account by Type and Holder
#' @export
get_islm_inv <- function(year = NULL) {
  if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("1.32", year = year)
}
#' @describeIn msb1 1.32.1 Islamic Banking System: Statement of Total Assets funded through Investment Account
#' @export
get_islm_stmt_assets_inv <- function(year = NULL) {
  # if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("1.32.1", year = year)
}

#' @describeIn msb1 1.32.2 Islamic Banking System: Total Financing funded through Investment Account by Type
#' @export
get_islm_fin_inv_type <- function(year = NULL) {
  # if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("1.32.2", year = year)
}

#' @describeIn msb1 1.32.3 Islamic Banking System: Total Financing funded through Investment Account by Concept
#' @export
get_islm_fin_inv_concept <- function(year = NULL) {
  # if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("1.32.3", year = year)
}

#' @describeIn msb1 1.32.4 Islamic Banking System: Total Financing funded through Investment Account by Purpose and Sectors
#' @export
get_islm_fin_inv_purpose_sectors <- function(year = NULL) {
  # if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("1.32.4", year = year)
}

#' @describeIn msb1 1.32.5 Islamic Banking System: Total Investment Account by Original Maturity
#' @export
get_islm_inv_maturity <- function(year = NULL) {
  # if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("1.32.5", year = year)
}

#' Financial and capital markets 
#' @param year Scalar integer
#' @name msb2
NULL

#' @describeIn msb2 2.1 Interest Rates: Banking Institutions
#' @export
get_rates_banking <- function(year = NULL) {
  # if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("2.1", year = year)
}

#' @describeIn msb2 2.2 Islamic Banking System: Financing Rate, Profit
#' Rate to Depositors and Rate of Return to Investment Account Holders
#' @export
get_rates_islm_banking <- function(year = NULL) {
  # if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("2.2", year = year)
}

#' @describeIn msb2 2.3 Interest Rates: Interbank Money Market
#' @export
get_rates_interbank_mm <- function(year = NULL) {
  # if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("2.3", year = year)
}

#' @describeIn msb2 2.4 Interest Rates: Treasury Bills and Bank Negara Bills
#' @export
get_rates_tbills <- function(year = NULL) {
  # if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("2.4", year = year)
}

#' @describeIn msb2 2.4.1 Treasury Bills, Bank Negara Bills, Malaysian Government 
#' Securities and Khazanah Bonds: Tender Results *
#' @param bill_type One of "treasury_bills", "bank_negara_bills", "malaysian_government_securities", "khazanah_bonds"
#' @export
get_tbills_tender <- function(bill_type = "treasury_bills", year = NULL) {
  # TODO: make sure the positioning of parameters is standardised 
  # if (!is_null(year)) assert_that(year >= 2000)
    assert_that(bill_type %in% c("treasury_bills", "bank_negara_bills", "malaysian_government_securities", "khazanah_bonds"))
  .get_msb_data("2.4.1", year = year, type = bill_type)
}

#' @describeIn msb2 2.5 Market Indicative Yield: Malaysian Government Securities
#' @export
get_rates_mgs <- function(year = NULL) {
  # if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("2.5", year = year)
}

#' @describeIn msb2 2.6 Exchange Rates: Malaysian Ringgit
#' @export
get_rates_myr <- function(year = NULL) {
  # if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("2.6", year = year)
}

#' @describeIn msb2 2.6.1 Exchange Rates: the Malaysian Ringgit (Daily)
#' @export
get_rates_myr_daily <- function(year = NULL) {
  # if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("2.6.1", year = year)
}

#' @describeIn msb2 2.7 Volume of Transaction in Interbank Money Market
#' @export
get_volume_interbank_mm <- function(year = NULL) {
  # if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("2.7", year = year)
}

#' @describeIn msb2 2.8 Volume of Interbank Transactions in the Kuala Lumpur Foreign Exchange Market
#' @export
get_volume_interbank_forex <- function(year = NULL) {
  # if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("2.8", year = year)
}

#' @describeIn msb2 2.9 Funds Raised in the Capital Market (by Public Sector)
#' @export
get_cap_funds_public <- function(year = NULL) {
  # if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("2.9", year = year)
}

#' @describeIn msb2 2.10 Funds Raised in the Capital Market (by Private Sector)
#' @export
get_cap_funds_private <- function(year = NULL) {
  # if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("2.10", year = year)
}

#' @describeIn msb2 2.11 New Issues of Corporate Bond and/or Sukuk
#' @export
get_bond_issues <- function(year = NULL) {
  # if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("2.11", year = year)
}

#' @describeIn msb2 2.12 Bursa Malaysia Securities Berhad: Selected Indicators
#' @export
get_bursa_indicators <- function(year = NULL) {
  # if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("2.12", year = year)
}

#' @describeIn msb2 2.13 Futures and Options Markets: Selected Indicators
#' @export
get_futures_indicators <- function(year = NULL) {
  # if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("2.13", year = year)
}

#' @describeIn msb2 2.14 Turnover of Conventional and Islamic Money Market
#' @export
get_mm_turnover <- function(year = NULL) {
  # if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("2.14", year = year)
}

#' @describeIn msb2 2.15 Turnover of Derivatives Transactions
#' @export
get_deriv_turnover <- function(year = NULL) {
  # if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("2.15", year = year)
}

#' @describeIn msb2 2.16 Turnover of Debt Securities and Sukuk
#' @export
get_debt_turnover <- function(year = NULL) {
  # if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("2.16", year = year)
}

#' @describeIn msb2 2.17 Turnover of Foreign Currency Market Transactions
#' @export
get_forex_turnover <- function(year = NULL) {
  # if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("2.17", year = year)
}

#' @describeIn msb2 2.18 Net Financing through the Banking System, Development 
#' Financial Institutions (DFIs) and Corporate Bonds (CB)
#' @export
get_net_financing <- function(year = NULL) {
  # if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("2.18", year = year)
}

#' External sector and macroeconomic indicators
#' @param year Scalar integer
#' @name msb3
NULL

#' @describeIn msb3 3.1 Federal Government Finance
#' @export
get_federal_finance <- function(year = NULL) {
  # if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("3.1", year = year)
}

#' @describeIn msb3 3.1.1 Federal Government Revenue
#' @export
get_federal_revenue <- function(year = NULL) {
  # if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("3.1.1", year = year)
}

#' @describeIn msb3 3.1.2 Federal Government Operating Expenditure by Object
#' @export
get_federal_opex <- function(year = NULL) {
  # if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("3.1.2", year = year)
}

#' @describeIn msb3 3.1.3 Federal Government Development Expenditure: A Functional Classification
#' @export
get_federal_devex <- function(year = NULL) {
  # if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("3.1.3", year = year)
}

#' @describeIn msb3 3.1.4-3.1.6 Federal Government Debt
#' @export
#' @importFrom dplyr case_when
#' @param by Classification of government debt: one of "original_maturity", "holder", "currency_and_remaining_maturity"
get_federal_debt <- function(year = NULL, by = "holder") {
  # if (!is_null(year)) assert_that(year >= 2000)
  assert_that(by %in% c("original_maturity", "holder", "currency_and_remaining_maturity"))
  case_when(
    by == "original_maturity" ~ .get_msb_data("3.1.4", year = year), 
    by == "holder" ~ .get_msb_data("3.1.5", year = year),
    TRUE ~ .get_msb_data("3.1.6", year = year)
  )  
}


#' @describeIn msb3 3.2 RENTAS- Foreign Holdings in Debt Securities and Sukuk
#' @export
get_rentas_foreign_debt_holdings <- function(year = NULL) {
  # if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("3.2", year = year)
}

#' External sector and macroeconomic indicators: aggregate output
#' 
#' @param year Scalar integer
#' @param metric One of "gdp", "gni"
#' @param output_by One of "expenditure", "activity"
#' @export 
#' @return nested list with "amt" and "change". Different base rates are 
#' nested within. 
#' @examples 
#' # we retrieve GDP by expenditure by default 
#' res <- get_aggregate_output()
#' 
#' # result is a nested list
#' str(res)
#' 
#' # to get change at 2000 prices run the following: 
#' res$change$base_2000 
#' @name msb3_output
get_aggregate_output <- function(year = NULL, metric = "gdp", output_by = "expenditure", change = TRUE) {
  assert_that(metric %in% c("gdp", "gni"))
  assert_that(output_by %in% c("expenditure", "activity"))
  if (metric == "gdp") {
    if (output_by == "expenditure") {
      message("GDP by expenditure")
      return(
        list(
          # TODO find a better name than amt 
          # amt = .get_msb_data("3.2", year = year), 
          change = list(
            base_2000 = .get_msb_data("3.3a", year = year),
            base_2010 = .get_msb_data("3.3", year = year)
          )
        )
      )
    } else if (output_by == "activity") {
      return(
        list(
          amt = list(
            base_2000 = .get_msb_data("3.4.1a", year = year),
            base_2010 = .get_msb_data("3.4.1", year = year), 
            current = .get_msb_data("3.4.2", year = year)
          ), 
          change = list(
            base_2000 = .get_msb_data("3.4a", year = year),
            base_2010 = .get_msb_data("3.4", year = year)
          )
        )
      )
    }
  } else if (metric == "gni") {
    if (output_by == "expenditure") {
      return(
        list(
          # TODO find a better name than amt 
          # amt = .get_msb_data("3.2", year = year), 
          amt = list(
            base_2000 = .get_msb_data("3.3.1a", year = year), 
            base_2010 = .get_msb_data("3.3.1", year = year)
          ), 
          change = NULL
        )
      )
    } else {
      message("No endpoint for retrieving GNI by economic activity")
      NULL
    }
  }

}

#' @describeIn msb3 3.5 Selected Economic Indicators
#' @export 
get_economic_indicators <- function(year = NULL) {
  # if (!is_null(year)) assert_that(year >= 2000)
  .get_msb_data("3.5", year = year)
}
