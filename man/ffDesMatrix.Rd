\name{ffDesMatrix}
\alias{ffDesMatrix}
\title{Full or fractional factorial design matrix generation}
\description{
The function generates the design matrix provided the
number of 2-levels design factors and defining relations.
}
\usage{
ffDesMatrix(k, gen = NULL)
}
\arguments{
  \item{k}{numeric. The number of 2-levels design factors in the designs.}
  \item{gen}{list. If \code{NULL} (default) a full factorial design is
      generated. Otherwise, each component of the list is a numeric vector of
      corresponding to each of the defining relations used to compose the
      design. See \strong{Details}.}
}
\details{
    A defining relation is declared by a vector where the first entry
    corresponds to the left hand side (LHS) of the defining
    equation. For example, if \code{k=5}, and \code{gen=list(c(-5,1,2,3,4))},
    then the defining equation is \eqn{-5=1*2*3*4}. A full 2-levels (-1,1)
    factorial design is generated. For each defining relation the LHS column
    is replaced by the corresponding columns product. At the end repeated
    runs are removed from the matrix.
}
\value{
    The function returns a 2-levels design matrix with \code{k} columns.
}
\seealso{
  \code{\link[conf.design]{conf.design}} of the
  \pkg{\link[conf.design]{conf.design}} package,
  \code{\link[FrF2]{FrF2}} from the \pkg{\link[FrF2]{FrF2}} package.
}
\author{Ernesto Barrios}
\examples{
ffDesMatrix(5) # Full 2^5 factorial design
ffDesMatrix(5,gen=list(c(5,1,2,3,4))) # 2^(5-1) factorial design
ffDesMatrix(5,gen=list(c(4,1,2),c(-5,1,3))) # 2^(5-2) factorial design
}
\keyword{design}
