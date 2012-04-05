\name{shoes.data}
\alias{shoes.data}
\docType{data}
\title{Boys' shoes data set}
\description{
Data for the Boys' Shoes Example.
}
\usage{data(shoes.data)}
\format{
  A data frame with 10 observations on the following 5 variables.
  \describe{
    \item{boy}{numeric. Boy number.}
    \item{matA}{numeric. Amount of wear of shoe made from material A.}
    \item{sideA}{factor. Foot side which shoe of material A is used.}
    \item{matB}{numeric. Amount of wear of shoe made from material B.}    
    \item{sideB}{factor. Foot side which shoe of material B is used.}
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
data(shoes.data)
str(shoes.data)
plot(shoes.data)
}
\keyword{datasets}
