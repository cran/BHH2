\name{tab03B2}
\alias{tab03B2}
\title{ Table 3.3 }
\usage{data(tab03B2)}
\description{
Reference set of differences between averages of two adjacent
sets of 10 successive batches.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{diff10}{a numeric vector}
  }
}
\details{
The \code{tab03B2} data frame has 200 rows and 1 column.
First 9 entries are \code{NA}.
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
data(tab03B2)
attach(tab03B2)
# displays the differences as dot plot (similar to histograms)
plt <- dotPlot(diff10,xlim=2.55*c(-1,+1),xlab="differences")
segments(1.3,0,1.3,max(plt$y))  #vertical line at x=1.3
detach()
}
\keyword{datasets}
