\name{RcmdrPlugin.seeg-package}
\alias{RcmdrPlugin.seeg-package}

\docType{package}

\title{Statistics for Environmental Science, Engineering, and Geography}

\description{Used in Acevedo, M.F. 2013. "Data Analysis and Statistics for Geography, Environmental Science, and Engineering", CRC press.}

\details{

\tabular{ll}{
Package: \tab RcmdrPlugin.seeg\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2013-01-06\cr
License: \tab GPL-2\cr
}
Package to use the seeg package from the Rcmdr (Fox 2005, 2007)

To start the RcmdrPlugin.seeg:

1.- run the R Commander by loading it as package \code{\link{Rcmdr}} or by using \code{Commander()} if the Rcmdr package is already loaded

2.- select RcmdrPlugin.seeg from menu Tools -> Load Rcmdr Plug-in(s) ...

Note: once the RcmdrPlugin.seeg has been loaded, the \code{options()$Rcmdr} should show  \code{"RcmdrPlugin.seeg"} in the \code{$plugins} component.

3.- during the same R session, after the RCommander is closed, it can be re-run simply with \code{Commander()} and the RcmdrPlugin.seeg will re-run directly because of the options()$Rcmdr have been set.

Optionally, if you want RcmdrPlugin.seeg to load automatically upon starting Rcmdr set options using \code{options(Rcmdr=list(plugins="RcmdrPlugin.seeg"))}
}

\author{
M.F. Acevedo <Acevedo@unt.edu>
}
\references{
Acevedo, M.F. 2013.  "Data Analysis and Statistics for Geography, Environmental Science, and Engineering", CRC press. 

Fox, J. 2005 "The R Commander: A basic-statistics graphical user interface to R" Journal of Statistical Software, 14(9):1-42, Aug. 2005. ISSN 1548-7660. URL http://www.jstatsoft.org/v14/i09

Fox, J. 2007 "Extending the R Commander by `Plug-In' Packages." R News, 7(3), 46-52.
URL http://CRAN.R-project.org/doc/Rnews/

}

\keyword{package}

\seealso{
 \code{\link{ecdfPlot}}, \code{\link{tsPlot}}, 
 \code{\link{scangeoEASppp}}, \code{\link{convertToppp}}, 
 \code{\link{quadChisqppp}}, \code{\link{nnGKenvppp}}, 
 \code{\link{varCal}}, \code{\link{SemiVarCov}}, 
 \code{\link{OKrigingCmd}}, \code{\link{PlotKriged}} 
}

\examples{
panel2(size=5)
x <- rnorm(100)
ts.plot(x)
acf(x)
}
