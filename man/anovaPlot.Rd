\name{anovaPlot}
\alias{anovaPlot}
\title{Graphical Anova}
\description{
    Dots plot displaying the deviations of factor levels from the mean
    showing the residuals as reference distribution.
}
\usage{
    anovaPlot(obj, stacked = TRUE, base = TRUE, axes = TRUE,
    faclab = TRUE, labels = FALSE, cex = par("cex"),
    cex.lab = par("cex.lab"), ...)
}
\arguments{
  \item{obj}{Object of class \code{aov} or \code{lm} for which marginal
    deviations from the mean and the residuals distribution is displayed.}
  \item{stacked}{logical. If \code{TRUE} and if it is necessary the dots are
    stacked, otherwise all points are displayed at same level with possible
    overlapping.}
  \item{base}{logical. By default a base line is displayed for each factor.
    If \code{FALSE} this line is omitted.}
  \item{axes}{logical. By default a scaled axes is drawn for each factor.
    If \code{FALSE} the axes are omitted.}
  \item{faclab}{logical. By default factor effect names and
    `Residuals' are used to label each dot plot. No axis is labelled otherwise.}
  \item{labels}{logical. By default, dots are used to the display.
    If \code{labels=TRUE} then factor levels are displayed for the factor dots
    plots and sequential enumeration is used for the residuals.}
  \item{cex}{numeric. Expansion factor of the character used for labelling the factor levels.}
  \item{cex.lab}{numeric. Expansion factor of the character used for labelling each factor.}
  \item{\dots}{additional parameters passed to the \code{dots} function.}
}
\details{
    Dots plot are displayed for the scaled deviations of factor levels from
    the grand mean and the distribution of the residuals is shown at the bottom
    of the plot for graphical comparison. The scaled factor for the factor
    deviations is \eqn{\sqrt{n/k}}{sqrt(n / k)}, where \eqn{k}{k} and \eqn{n}{n}
    are the factor and residuals degrees of freedom reported by \code{anova(obj)}.
    If \code{labels=TRUE} then the factor levels are used for as points
    instead of dots. This option is useful to post labelling the dot plots.
    See \code{\link{dots}} function.
    The Anova plot is built in a \eqn{(0,1)\times(0,1)}{(0,1)x(0,1)} plot
    area. The area plot is divided to accommodate each of the factors and
    the residual at the bottom of the plotting area. The function returns a
    list with the coordinates of all the dots displayed.
}
\warning{
    The function identifies as an interaction factor any factor
    with the colon character ":" in its name. Factors like "I(A:B)"
    will give you problems.
}
\value{
    The function is called for graphical display of factor levels mean and
    residuals as reference distribution. An invisible list with the actual (x,y) coordinates used for each of
    the factors and residuals.
}
\note{
    The anova plot presented here is thought for graphical comparison of
    factor effects in one-layer balanced designed experiments. The function
    is not prepared for general situations. However, representation of some
    simple split-plot experiments is possible.
}
\references{
Box G. E. P. (2000). \emph{Box on Quality}.
Edited by G. C. Tiao et al. New York: Wiley.

 Box G. E. P, Hunter, J. S. and Hunter, W. C. (2005). 
    \emph{Statistics for Experimenters II}. New York: Wiley.
}
\author{Ernesto Barrios}

\seealso{\code{\link{dots}}, \code{\link{dotPlot}}}

\examples{
library(BHH2)
data(heads.data)
heads.data$periods <- factor(heads.data$periods)
heads.data$heads <- factor(heads.data$heads)

heads.aov <- aov(resp~periods+heads,data=heads.data)
anovaPlot(heads.aov)

anovaPlot(heads.aov,labels=TRUE,faclab=TRUE)

}
\keyword{ design }
\keyword{ hplot }
\keyword{ regression }
