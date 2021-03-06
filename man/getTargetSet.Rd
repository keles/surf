% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/estimate.R
\name{getTargetSet}
\alias{getTargetSet}
\title{Get target set based on \code{inferredFeature}}
\usage{
getTargetSet(event, id_column = "transcript_id", verbose = F)
}
\arguments{
\item{event}{a \code{surf} object from \link{faseqInfer} or \link{faseq}.}

\item{id_column}{\code{character}, the name of the column that contains target IDs.}

\item{verbose}{\code{logical}, whether (\code{TRUE}) to echo progress.}
}
\value{
a \code{list} of \code{character}, each being a set of target identifiers.
}
\description{
Get target set based on \code{inferredFeature}
}
