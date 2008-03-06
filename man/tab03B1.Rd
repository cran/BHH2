\name{tab03B1}
\alias{tab03B1}
\title{ Table 3.2 }
\usage{data(tab03B1)}
\description{
Production record of 210 consecutive batch yield values
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{yield}{a numeric vector}
    \item{ave10}{a numeric vector. Moving average of last 10 observations.
                   First 9 entries NA}
  }
}
\details{
The \code{tab03B1} data frame has 210 rows and 2 columns.
}
\source{
 Box G. E. P, Hunter, W. C. and Hunter, J. S. (1978). 
    \emph{Statistics for Experimenters}. New York: Wiley.
}
\references{
 Box G. E. P, Hunter, J. S. and Hunter, W. C. (2005). 
    \emph{Statistics for Experimenters II}. New York: Wiley.
}
\examples{
library(BHH2)
data(tab03B1)
attach(tab03B1)
stem(yield)
stem(ave10)
plot(yield,xlab="time order",ylab="yield")
detach()
}
\keyword{datasets}
