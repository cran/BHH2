\name{dots}
\alias{dots}
\title{Dots display}
\description{
  The function adds to the current plot an one-dimensional scatter plot with stacking similar to a
  stem-leaf plot or histograms but using characters. .
}
\usage{
    dots(x = , y = 0.1, xlim = range(x,na.rm=TRUE), stacked = FALSE, hmax= 0.5,
    base = TRUE, axes = FALSE, pch = 21, pch.size = "x", labels = NULL,
    hcex = 1, cex = par("cex"), cex.axis = par("cex.axis"))
}
\arguments{
  \item{x}{numeric vector to be displayed in the dot plot.}
  \item{y}{numeric. Height of the dots (characters) at the base level. By default
      \code{y=0.1} thinking on a plot with \code{ylim=c(0,1)}.}
  \item{xlim}{numeric vector with 2 entries: \code{xmin} and \code{xmax}. These values determine
      the width of the displayed dot plot not necessarily equal to the limits of the plot.}
  \item{stacked}{logical. If \code{TRUE} characters are stacked,
    otherwise a scatter plot of the data is displayed at \code{y} level using character \code{pch}.}
  \item{hmax}{numeric. The maximum height in user units. By default
      \code{hmax=0.5} thinking on a plot with \code{ylim=c(0,1)}. See \code{y}.}
  \item{base}{logical. If \code{TRUE} a horizontal line is displayed at the bottom of the plot.}
  \item{axes}{logical. If \code{TRUE} an labelled axis is shown.}
  \item{pch}{numeric or character. Character number or character to be used for the display.}
  \item{pch.size}{numeric. Character to be used to distribute the "dots" (\code{pch}).
    See \strong{Details}.}
  \item{labels}{character vector. If \code{NULL} (default) each point (dot) is displayed using
      character \code{pch}, otherwise vector \code{labels} is used for the display. See \strong{Details}.}
  \item{hcex}{numeric. Expansion (shrink) factor for character height. See details.}
  \item{cex}{numeric. Expansion factor used for character display. See \link{par}.}
  \item{cex.axis}{numeric. Expansion factor used in case of labelling the axis.}
}
\details{
    Function \code{dots} adds to the current plot a dot plot similar to a
    stem-and-leaf plot using characters specified by \code{pch} and
    \code{labels=NULL}. If \code{labels} is not \code{NULL} then it is
    expected to be a character vector and will
    will be used to display each of the points. Its use is repeated or cut short if necessary.
    The function computes the width and height size using character \code{pch.size} calling
    \code{strwidth} and \code{strheight}, but displays \code{pch} instead.
    Mainly this is used when \code{pch} is not given by a quoted character,
    for example, \code{pch=21}. Also, currently the par("mkh") is ignored so
    \code{hcex} is used to compute the "working" height of the characters:
    \code{hcex*strheight(pch.size,units="user")}. If \code{stacked=TRUE},
    the base line is divided in subintervals of size \code{strwidth(pch.size)}
    and computed the number of points in each subinterval. If maximum number
    of stacked characters exceed \code{hmax} then the characters are overlapped to
    adjust their total height to \code{hmax}.
}
\value{
Invisible data frame with columns (x,y,labels). `x' and `y' are the coordinates
in user units of each point and `labels' the corresponding character displayed.
}
\author{Ernesto Barrios}
\seealso{
    \code{\link{dotPlot}}, \code{\link{anovaPlot}}
}

\examples{
library(BHH2)
set.seed(4)
# Defines the height of the plot area between c(0,1)
dotPlot(rnorm(100),xlab="x")

x <- rnorm(100)

# plots (possibly) overlapping points at y=0.3
dots(x,y=0.3)
# plots (possibly) overlapping points at y=0.4
dots(x,y=0.4,stacked=TRUE,base=FALSE)
# plots (hopefully) stacked points at y=0.5 allowing the dots to as high as 0.9
dots(x,y=0.5,stacked=TRUE,base=FALSE,hmax=.9)
}
\keyword{ aplot }
\keyword{ hplot }
