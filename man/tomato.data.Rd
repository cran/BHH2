\name{tomato.data}
\alias{tomato.data}
\docType{data}
\title{Tomato plants data set}
\usage{data(tomato.data)}
\description{
    Yield of tomato plants under two different fertilizers.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{pos}{numeric. Row position}
    \item{pounds}{numeric. Plant's yield in pounds.}
    \item{fertilizer}{factor. Type of fertilizer (A or B).}
  }
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
data(tomato.data)
str(tomato.data)
plot(tomato.data)
}
\keyword{datasets}
