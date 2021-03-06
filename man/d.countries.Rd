\name{d.countries}
\alias{d.countries}
\docType{data}
\title{ISO 3166-1 Country Codes
%%   ~~ data name/kind ... ~~
}
\description{Country codes published by the International Organization for Standardization (ISO) define codes for the names of countries, dependent territories, and special areas of geographical interest. 
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
}
\usage{data("d.countries")}
\format{
  A data frame with 249 observations on the following 4 variables.
  \describe{
    \item{\code{name}}{a character vector, the name of the country.}
    \item{\code{a2}}{a character vector, two-letter country codes (aka alpha-2) which are the most widely used of the three, and used most prominently for the Internet's country code top-level domains (with a few exceptions).}
    \item{\code{a3}}{a character vector, three-letter country codes (aka alpha-3) which allow a better visual association between the codes and the country names than the alpha-2 codes.}
    \item{\code{code}}{a numeric vector, three-digit country codes which are identical to those developed and maintained by the United Nations Statistics Division, with the advantage of script (writing system) independence, and hence useful for people or systems using non-Latin scripts.}
    \item{\code{region}}{the region of the country}
    \item{\code{pop2012}}{the population in 2012}
    \item{\code{gcpi2012}}{the gross national income (per capita) in dollars per country in 2012.}
  }
}
\references{\url{http://en.wikipedia.org/wiki/ISO_3166-1}\cr
\url{http://data.worldbank.org/data-catalog/health-nutrition-and-population-statistics}
%%  ~~ possibly secondary sources and usages ~~
}
\examples{
head(d.countries)
}
\keyword{datasets}
