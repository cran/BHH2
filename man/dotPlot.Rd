\name{dotPlot}
\alias{dotPlot}
\title{ Dot plot: scatter plot with stacked dots similar to the stem-and-leaf plot }
\description{
  Displays an one-dimensional scatter plot with stacking similar to stem-and-leaf plot or histograms.
}
\usage{
dotPlot(x, y = 0, xlim = range(x,na.rm=TRUE), xlab = NULL, 
    scatter = FALSE, hmax = 1, base = TRUE, axes = TRUE, frame = FALSE, 
    pch = 21, pch.size = "x", labels = NULL, hcex = 1, cex =par("cex"), 
    cex.axis = par("cex.axis"),...)
}
\arguments{
  \item{x}{ numeric vector to be displayed.}
  \item{y}{numeric. Height of the basis of the plot.}
  \item{xlim}{numeric. Range of the x axis.}
  \item{xlab}{character string. label for the horizontal axis.}
  \item{scatter}{logical. If TRUE a one-dimensional scatter plot of x, similar to \code{rug},
    is displayed at the base of the plot.}
  \item{hmax}{numeric. Height of the highest dot.
    \code{hmax=1} as default. See \strong{Details}.}
  \item{base}{logical. If \code{TRUE} (default) a base line for the dots
    (characters) is displayed.}
  \item{axes}{logical. If \code{TRUE} labelled axis is displayed.}
  \item{frame}{logical. If \code{FALSE} the plot frame is omitted.}
  \item{pch}{numeric or character. Character number or character to be used
    for the display.}
  \item{pch.size}{numeric. Character to be used to distribute the "dots" (\code{pch}).
    See \strong{Details}.}
  \item{labels}{character vector. If \code{NULL} (default) each point (dot)
    is displayed using character \code{pch}, otherwise vector \code{labels}
    is used for the display. See \strong{Details}.}
  \item{hcex}{numeric. Expansion (shrink) factor for character height.
    See \strong{Details}.}
  \item{cex}{numeric. Expansion factor used for character display.
    See \code{\link{par}}.}
  \item{cex.axis}{numeric. Expansion factor used in case of labelling the axis.}
  \item{\dots}{additional graphical parameters.}
} \details{
    Basically function \code{dotPlot} calls function \link{dots} to display
    a stacked one-dimensional scatter plot within vertical limits 0 and 1.
    See \code{\link{dots}} for more details.
} \value{
  The function is called for its side effect which is to produce one-dimensional
  scatter plot with stacking as described, for example, in Chambers et al. (1983)
  It returns invisible a data frame with the actual coordinates (in users units).
}
\note{
    Since the dots are stacked vertically, their alignment is subject
    to rounding errors. Dots may be slightly moved in either side from their
    actual value.
}
\references{ Chambers, J. M., Cleveland, W. S., Kleiner, B. and Tukey, P.
A. (1983)
            \emph{ Graphical Methods for Data Analysis.}
            New York: Chapman \& Hall
}
\author{Ernesto Barrios}
\seealso{ \code{\link{dots}}, \code{\link{stem}},\code{\link{hist}},\code{\link{dotchart}}}

\examples{
library(BHH2)
data(tab03B1)
attach(tab03B1)
stem(yield) #stem-leaf plot
plt <- dotPlot(yield) # equivalent dotPlot

# same dot plot with max and min observations labelled
plt <- dotPlot(yield,xlim=c(75,95),xlab="yield",pch.size="x",hcex=1)
text(c(min(yield),max(yield),80),rep(0.05,3),c("min","max",80))
segments(80,min(plt$y),80,max(plt$y),lty=2)
detach()
}
\keyword{ hplot }
