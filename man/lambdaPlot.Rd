\name{lambdaPlot}
\alias{lambdaPlot}
\title{Lambda plot: traces the t and F statistics in Box-Cox transformation of the response}
\description{
Trace regression coefficients' \emph{t}-values or \emph{F}-ratios for different values of \eqn{\lambda}{\lambda} in
the Box-Cox transformation.
}
\usage{
lambdaPlot(mod, lambda = seq(-1, 1, by = 0.1), stat = "F", global = TRUE,
    cex = par("cex"), ...)
}
\arguments{
  \item{mod}{list. A list of class \code{lm}.}
  \item{lambda}{numeric. The values of \eqn{\lambda}{\lambda} in the Box-Cox transformation. See \strong{Details}.}
  \item{stat}{character. Either \code{"t"} of \code{"F"}, corresponding to the
    coefficients' \emph{t}-values or \emph{F}-ratios to display.}
  \item{global}{logical. Applied only for \code{stat="F"}, if \code{TRUE},
    the model's \emph{F}-ratio is traced, otherwise the coefficients' \emph{F}-statistics.}
  \item{cex}{numeric. Expansion factor used to label the trace lines.\code{par("cex")} bu default.}
  \item{\dots}{additional graphical parameters passed to \code{plot} function.}
}
\details{
The response is transformed as
\eqn{Y=(y^{\lambda}-1)/\lambda}{Y=(y^\lambda - 1)/\lambda}
for each value of \eqn{\lambda}{\lambda} (\code{lambda}) and the model refitted.
The \emph{t}-values or \emph{F}-ratios of the coefficients are saved for the display.
If \code{global=TRUE}, then the \emph{F}-ratio of the whole model is plotted instead.}
}
\value{
    The function returns an invisible list with components:
  \item{lambda}{numeric. Vector of length \code{m} with the
                different values of \eqn{\lambda}{\lambda}.}
  \item{t.lambda }{matrix (\code{k x m}), where \code{m}
    is the number of coefficients in model \code{mod} without the intercept,
    with the coefficient's \emph{t}-values.}
  \item{f.lambda }{matrix (\code{k x m}) with the coefficient's \emph{F}-values.
    if \code{global = FALSE}, otherwise the matrix is (\code{1 x m}), with the
    corresponding model \emph{F}-ratio.}
}
\references{
Box, G. E. P. and C. Fung (1995)
"The Importance of Data Transformation in Designed Experiments for Life Testing".
\emph{Quality Engineering}, Vol. 7, No. 3, pp. 625-68.

 Box G. E. P, Hunter, J. S. and Hunter, W. C. (2005). 
    \emph{Statistics for Experimenters II}. New York: Wiley.
}
\author{Ernesto Barrios}
\note{For each value of \eqn{\lambda}{\lambda} the model is refitted. Computations can be
    done more efficiently and will be incorporated in future versions.}
\examples{
library(BHH2)
# Lambda Plot tracing t values.
data(woolen.data)
woolen.lm <- lm(y~x1+x2+x3+I(x1^2)+I(x2^2)+I(x3^2)+
                    I(x1*x2)+I(x1*x3)+I(x2*x3)+I(x1*x2*x3),data=woolen.data)
lambdaPlot(woolen.lm,cex=.8,stat="t")

# Lambda Plot tracing F values.
woolen2.lm <- lm(y~x1+x2+x3,data=woolen.data)
lambdaPlot(woolen2.lm,lambda=seq(-1,1,length=41),stat="F",global=TRUE)

# Lambda Plot tracing F values.
data(poison.data)
poison.lm <- lm(y~treat*poison,data=poison.data)
lambdaPlot(poison.lm,lambda=seq(-3,1,by=.1),stat="F",global=FALSE)
}
\keyword{ design }
\keyword{ hplot }
