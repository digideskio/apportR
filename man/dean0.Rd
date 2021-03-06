% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/dean0.R
\name{dean0}
\alias{dean0}
\title{Return apportioned vector according to Dean's Method - allows for zeros}
\usage{
dean0(x, n = 100, k = 1)
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
Return apportioned vector according to Dean's Method - allows for zeros
}
\section{References}{

 http://www.maa.org/publications/periodicals/convergence/apportioning-representatives-in-the-united-states-congress-deans-method-of-apportionment
}

\section{Further details}{

  Method suggested in 1920s by James Dean, professsor of astronomy and mathematics at Dartmouth and University of Vermont.
}
\examples{
majs <- c(100, 154, 0, 22, 5)
names(majs) <- c("English", "History", "Swahili", "French", "Aeronautics")
dean0(majs,10)
}

