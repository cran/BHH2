\name{penicillin.data}
\alias{penicillin.data}
\docType{data}
\title{Penicillin data}
\description{
Penicillin yield example data set.
}
\usage{data(penicillin.data)}
\format{
  A data frame with 20 observations on the following 4 variables.
  \describe{
    \item{blend}{factor with 5 levels: \code{B1} \code{B2} \code{B3} \code{B4} \code{B5}.
        Blend factor used to block the experiment.}
    \item{run}{numeric vector. Run order within the blocking (Blend) factor.}
    \item{treat}{factor with levels: \code{A} \code{B} \code{C} \code{D}.
    The process variants called treatment.}
    \item{yield}{numeric vector. Experiment yield response.}
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
data(penicillin.data)
str(penicillin.data)
plot(penicillin.data)
}
\keyword{datasets}
