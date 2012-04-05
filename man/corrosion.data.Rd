\name{corrosion.data}
\alias{corrosion.data}
\docType{data}
\title{Corrosion data}
\description{
Corrosion resistance study data set.
}
\usage{data(corrosion.data)}
\format{
  A data frame with 24 observations on the following 4 variables.
  \describe{
    \item{run}{factor with 6 levels. The casting order.}
    \item{heats}{factor with 3 levels. The casting temperature.}
    \item{coating}{factor with 4 levels. The coating treatment.}
    \item{resistance}{numeric vector. Corrosion resistance response.}
  }
}
\references{
 Box G. E. P, Hunter, J. S. and Hunter, W. C. (2005). 
    \emph{Statistics for Experimenters II}. New York: Wiley.
}
\examples{
data(corrosion.data)
str(corrosion.data)
plot(corrosion.data)
}
\keyword{datasets}
