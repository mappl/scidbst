% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/TRS-class-decl.R, R/TRS-class.R
\docType{class}
\name{TRS}
\alias{TRS}
\alias{.trs_class}
\alias{TRS}
\title{Temporal Reference System}
\usage{
TRS(dimension, t0, tres, tunit)
}
\arguments{
\item{dimension}{character - the dimension name}

\item{t0}{POSIXt - the datum}

\item{tres}{numeric - the temporal resolution}

\item{tunit}{character - The temporal unit}
}
\description{
This object holds information regarding a temporal reference system. In particular this reference system consists of a datum (t0), a
resolution (tres), a dimension name (dimname) and a measurement unit (tUnit) which is connected to the resolution.
}
\details{
The tUnit is mostly used in cases where the function \code{\link{difftime}} is called. Therefore tUnit can either be "secs", "mins",
"hours", "days" or "weeks".
}
\section{Slots}{

\describe{
\item{\code{t0}}{POSIXt derivative as the datum for this TRS}

\item{\code{tUnit}}{character - The unit definition as used in \code{\link{difftime}}}

\item{\code{tResolution}}{numeric - The amount of tUnits that make up the resolution}

\item{\code{dimname}}{character - The dimension name}
}}

