\name{ffFullMatrix}
\alias{ffFullMatrix}
\title{Full model matrix from a design matrix}
\description{
The function builds the full matrix with the constant term, main effects and
interactions from a design matrix.
}
\usage{
    ffFullMatrix(X, x, maxInt, blk = NULL)
}
\arguments{
  \item{X}{numeric matrix. Design matrix.}
  \item{x}{numeric vector. Design matrix entries to use to construct the full model matrix.}
  \item{maxInt}{numeric. Highest interaction order.}
  \item{blk}{numeric matrix. Each column correspond to a blocking factor.}
}
\details{
    Columns \code{x} of matrix \code{X} are used for main effects. All
    the 2, \dots , \code{maxInt} order interaction are constructed.
    The first columns of the final matrix correspond to the constant term (1's)
    and block factors.
}
\value{
    The function returns list with the following components:
    \item{Xa}{matrix}. Augmented matrix with columns for the constant terms,
        blocking factors, main effects, second order interactions, \dots, etc.
    \item{x}{numeric vector. Design matrix \code{X} factor (column) numbers
        used to build the complete model matrix.}
    \item{maxInt}{numeric. The highest interaction order.}
    \item{nTerms}{numeric vector. Contains the number of blocking factors,
        main effects, 2nd order interaction effects, \dots , etc.}
}
\author{Ernesto Barrios}
\seealso{
    \code{\link{ffDesMatrix}}
}
\examples{
print(X <- ffDesMatrix(5,gen=list(c(5,1,2,3,4))))
ffFullMatrix(X[,1:4],x=c(1,2,3,4),maxInt=2,blk=X[,5])
ffFullMatrix(X[,1:5],x=c(1,3,5),maxInt=3)
}
\keyword{design}
