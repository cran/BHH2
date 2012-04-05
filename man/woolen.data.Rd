\name{woolen.data}
\alias{woolen.data}
\docType{data}
\title{Textile experiment data set}
\description{
Woolen thread experiment data set.
}
\usage{data(woolen.data)}
\format{
  This data frame with 27 observations contains the following columns:
  \describe{
    \item{x1}{numeric. Length of test specimens factor.}
    \item{x2}{numeric. Amplitude of loading cycle factor.}
    \item{x3}{numeric. Load factor.}
    \item{y}{numeric. Cycles to failure response.}
  }
}
\source{
Box, G. E. P. and D. R. Cox (1964). 
"An Analysis of Transformations (with discussion)",
\emph{Journal of the Royal Statistical Society}, 
Series B, Vol. 26, No. 2, pp. 211--254.
}
\references{
 Box G. E. P, Hunter, J. S. and Hunter, W. C. (2005). 
    \emph{Statistics for Experimenters II}. New York: Wiley.
}
\examples{
data(woolen.data)
str(woolen.data)
plot(woolen.data)
}
\keyword{datasets}
