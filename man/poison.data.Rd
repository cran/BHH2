\name{poison.data}
\alias{poison.data}
\non_function{}
\title{Poison example data set}
\usage{data(poison.data)}
\description{
Poison data from Biological Experiment
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{poison}{factor with 3 levels: P1, P2 and P3.}
    \item{treat}{factor with 4 levels: trA, trB, trC and trD.}
    \item{y}{numeric. Survival time as response.}
  }
}
\source{
Box, G. E. P. and D. R. Cox, An Analysis of Transformations (with discussion),
\emph{Journal of the Royal Statistical Society},
Series B, Vol. 26, No. 2, pp. 211--254.
}
\references{
 Box G. E. P, Hunter, J. S. and Hunter, W. C. (2005). 
    \emph{Statistics for Experimenters II}. New York: Wiley.
}
\examples{
data(poison.data)
str(poison.data)
plot(poison.data)
}
\keyword{datasets}
