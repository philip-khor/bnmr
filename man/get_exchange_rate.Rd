% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/exchange_rate.R
\name{get_exchange_rate}
\alias{get_exchange_rate}
\title{Exchange Rates: KL Interbank Foreign Exchange Market}
\source{
https://apikijangportal.bnm.gov.my/
}
\usage{
get_exchange_rate(currency = NULL, session = "1130", quote = "rm")
}
\arguments{
\item{currency}{3-characters currency code based on ISO4217 standard}

\item{session}{Character string "0900", "1130", "1200" or "1700".
A snapshot of the exchange rate daily at 0900, 1130, 1200 and 1700 intervals}

\item{quote}{Base currency (Ringgit ("rm") or foreign currency ("fx")) as the denominator for the exchange rate}
}
\description{
Obtain currency exchange rates
from the Interbank Foreign Exchange Market in Kuala Lumpur
in relation to Ringgit.
}
\examples{
get_exchange_rate()
}
\keyword{rates_and_volumes}
