\name{permtest}
\alias{permtest}
\title{Permutation test: randomization test for small size samples}
\description{Permutation test for means and variance comparisons.}
\usage{
       permtest(x, y = NULL)
}
\arguments{
  \item{x}{numeric vector. Sample group X.}
  \item{y}{numeric vector. Sample group Y.}
}

\details{
    In the one--sample problem, the function builds all \eqn{2^n}{2^n}
    possible \eqn{\pm x_i}{+/- x_i} combinations. For the two--sample problem,
    all possible \eqn{B(n+m,n)}{B(n+m,n)} samples size
    \eqn{n}{n} (=\code{length(x)}) and \eqn{m}{m} (=\code{length(y)}) are
    generated and the permutation distributions for the \emph{t}-statistics
    and \emph{F}-ratios. \emph{p}-values are computed based on these
    distributions.
}
\value{
    The function returns the number \eqn{N}{N} of different samples
    generated for the permutation distribution, the observed \emph{t}-statistic,
    its \emph{p}-value, based on both, the parametric and permutation
    distributions as well as the observed \emph{F}-ratio and its corresponding
    \emph{p}-values. The test may take a long time to generate all the possible
    combinations. It has been tested for \eqn{n + m = 22}{n + m = 22} and
    \eqn{n < 12}{n < 12}.
}
\author{Ernesto Barrios}

\section{WARNING}{The test may take a long time to generate all the possible
                      combinations.}

\references{
 Box G. E. P, Hunter, J. S. and Hunter, W. C. (2005). 
    \emph{Statistics for Experimenters II}. New York: Wiley.
}

\seealso{\code{onet.permutation} and \code{towt.permutation}
of \pkg{DAAG} package, and \code{perm.test} of the \pkg{exactRankTests}.}

\examples{
library(BHH2)

# Permutation test for Tomato Data
data(tomato.data)
cat("Tomato Data (not paired):\n")
attach(tomato.data)
a <- pounds[fertilizer=="A"]
b <- pounds[fertilizer=="B"]
print(round(test <- permtest(b,a),3))
detach()

# Permutation test for Boy's Shoes Example
data(shoes.data)
cat("Shoes Data (paired):\n")
attach(shoes.data)
x <- matB-matA
print(round(test <- permtest(x),3))
detach()

}
\keyword{design}
\keyword{distribution}
