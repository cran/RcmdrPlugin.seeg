\name{RcmdrPluginseeg}
\alias{ecdfPlot}
\alias{tsPlot}
\alias{acfPlot}
\alias{edaPlot}
\alias{scangeoEASppp}
\alias{scangeoEASras}
\alias{convertToppp}
\alias{quadChisqppp}
\alias{quadPoisppp}
\alias{nnGKppp}
\alias{nnGKenvppp}
\alias{varCal}
\alias{SemiVarCov}
\alias{MakeSemiVarCov}
\alias{OKrigingCmd}
\alias{PlotKriged}

\title{Rcmdr Plugin seeg functions}

\description{
Functions for the seeg plugin of package \code{\link{Rcmdr}}. For details of the Rcmdr see Fox(2005, 2007). 
}

\usage{
 ecdfPlot()
 tsPlot()
 acfPlot()
 edaPlot()
 scangeoEASppp()
 scangeoEASras()
 convertToppp()
 quadChisqppp()
 quadPoisppp()
 nnGKppp()
 nnGKenvppp()
 varCal()
 SemiVarCov()
 MakeSemiVarCov()
 OKrigingCmd()
 PlotKriged()
}

\arguments{
These functions do not require arguments. Functions are invoked by the menu items of RcmdrPlugin.seeg. The user does not really need to employ these functions.
Their role are as follows:

 ecdfPlot: dialog to pick a variable from a dataset and call \code{\link{ecdf}} function of seeg

 tsPlot: dialog to pick a variable from a dataset and call \code{\link{ts.plot}} function

 acfPlot: dialog to pick a variable from a dataset and call \code{\link{acf}} function

 edaPlot: dialog to pick a variable from a dataset and call \code{\link{eda6}} function of seeg

 scangeoEASppp: dialog to set a name for dataset to be read from a geoEAS file using \code{\link{scan.geoeas.ppp}} of seeg

 scangeoEASras: dialog to set a name for dataset to be read from a geoEAS file using \code{\link{scan.map.ras}} of seeg

 convertToppp: dialog to select a dataset and convert to ppp using \code{\link{makeppp}} of seeg

 quadChisqppp: dialog to select a dataset and perform quadrat analysis by Chisquare using \code{\link{quad.chisq.ppp}} of seeg  

 quadPoisppp: dialog to select a dataset and perform quadrat analysis by Poisson using \code{\link{quad.poisson.ppp}}  of seeg

 nnGKppp: invokes function nnGK.ppp of seeg to perform Nearest Neighbor analysis using \code{\link{nnGK.ppp}} of seeg

 nnGKenvppp: dialog to select number of Monte Carlo realizations and calculate envelopes for G and K using \code{\link{nnGKenv.ppp}} of seeg
 
 varCal: dialog to set arguments for semivariogram calculations using \code{\link{vario}} of seeg

 SemiVarCov: dialog to set model of Semi-Variance and Covariance using \code{\link{model.semivar.cov}} of seeg

 MakeSemiVarCov: dialog to make a model of Semi-Variance and Covariance using \code{\link{make.variogram}} of seeg

 OKrigingCmd: dialog to set arguments for Ordinary Kriging using \code{\link{Okriging}} of seeg

 PlotKriged: dialog to set arguments to plot a dataset together with its kriged map using \code{\link{plotkriged}} of seeg
i}

\details{
To start the RcmdrPlugin.seeg:

1.- run the R Commander by loading it as package \code{\link{Rcmdr}} or by using \code{Commander()} if the Rcmdr package is already loaded

2.- select RcmdrPlugin.seeg from menu Tools -> Load Rcmdr Plug-in(s) ...

Note: once the RcmdrPlugin.seeg has been loaded, the \code{options()$Rcmdr} should show  \code{"RcmdrPlugin.seeg"} in the \code{$plugins} component.

3.- during the same R session, after the RCommander is closed, it can be re-run simply with \code{Commander()} and the RcmdrPlugin.seeg will re-run directly because of the options()$Rcmdr have been set.

Optionally, if you want RcmdrPlugin.seeg to load automatically upon starting Rcmdr set options using \code{options(Rcmdr=list(plugins="RcmdrPlugin.seeg"))}     
}
\value{
These functions generate a dialog box for the user to enter arguments for a call one of seeg functions to execute the work.
}
\references{
Acevedo M.F. 2013. "Data Analysis and Statistics for Geography, Environmental Science, and Engineering", CRC Press.

Fox, J. 2005 "The R Commander: A basic-statistics graphical user interface to R" Journal of Statistical Software, 14(9):1-42, Aug. 2005. ISSN 1548-7660. URL http://www.jstatsoft.org/v14/i09

Fox, J. 2007 "Extending the R Commander by `Plug-In' Packages." R News, 7(3), 46-52.
URL http://CRAN.R-project.org/doc/Rnews/

}

\author{
Miguel F. Acevedo \email{Acevedo@unt.edu}
}
\note{
Input files are in 'datafiles.zip' in directory 'datafiles' and organized by chapters of Acevedo (2013). The examples below require input files. 
}

\seealso{
convert to ppp object \code{\link{ppp}}, plot \code{\link{plot}},   plot \code{\link{plot}},   sgeostat \code{\link{point}}, \code{\link{pair}},
}
\examples{
\dontrun{
  command <- paste("plot(ecdf(", ActiveDataSet(), "$", x, '))', sep="")
  doItAndPrint(command)
}
}

\keyword{programming}
\keyword{IO}

