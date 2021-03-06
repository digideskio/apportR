% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/webster.R
\name{webster}
\alias{webster}
\title{Return apportioned vector according to Webster's Method}
\usage{
webster(x, n = 100, k = 1)
}
\arguments{
\item{x}{A named vector.}

\item{n}{Number of apportioned units to sum to}

\item{k}{The incrementing interval used to search for divisors}
}
\value{
A named vector of length \code{x} containing apportioned integers summing to \code{n}.
}
\description{
Return apportioned vector according to Webster's Method
}
\section{References}{

http://www.maa.org/publications/periodicals/convergence/apportioning-representatives-in-the-united-states-congress-websters-method-of-apportionment
}

\section{Further details}{

 Method suggested by Sen Daniel Webster used in 1840, 1910 and 1930 apportionments
}
\examples{
webster(usa1832, 240)
}

