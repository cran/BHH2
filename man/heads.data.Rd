\name{heads.data}
\alias{heads.data}
\docType{data}
\title{Machine heads data}
\description{
Data set of the variability of machine heads in a quality improvement experiment.
}
\usage{data(heads.data)}
\format{
  A data frame with 30 observations on the following 6 variables.
  \describe{
    \item{obs}{numeric. Observation number.}
    \item{periods}{factor. Periods factor (P1, \dots, P6).}
    \item{heads}{factor. Type of head factor (H1, \dots, H5).}
    \item{days}{factor. Day factor (D1 and D2).}
    \item{shifts}{factor. Shift factor (S1, S2, and S3).}
    \item{resp}{numeric. Response.}
  }
}
\source{
   Box, G. E. P. (1993). "How to Get Lucky".
   \emph{Quality Engineering}, Vol. 5, No. 3, pp 517-524.
}
\references{
 Box G. E. P, Hunter, J. S. and Hunter, W. C. (2005). 
    \emph{Statistics for Experimenters II}. New York: Wiley.
}
\examples{
data(heads.data)
str(heads.data)
plot(heads.data)
}
\keyword{datasets}
