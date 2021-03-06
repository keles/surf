% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/prepare.R
\name{parseEvent}
\alias{parseEvent}
\title{Parse ATR events from genome annotation}
\usage{
parseEvent(
  anno.file,
  anno.format = tools::file_ext(anno.file),
  cores = max(1, detectCores() - 2),
  min.event.length = 6,
  location.feature = T,
  depth.exon = 100,
  depth.intron = 300,
  remove.duplicate = T,
  verbose = FALSE
)
}
\arguments{
\item{anno.file}{\code{character}, directory to genome annotation file.}

\item{anno.format}{\code{character}, the format of the annotation file. The format can be inferred from \code{anno.file} automatically, unless it is not implicit by the extension.}

\item{cores}{\code{integer}, number of computing cores to use.}

\item{min.event.length}{\code{numeric} (positive), minimum length of a valid event.}

\item{location.feature}{\code{logical}, whether (default to \code{TRUE}) to add location features for each event. This usually takes the longest time in annotation parsing procedure.}

\item{depth.exon}{\code{integer}, extended depth into exon, default 50 nt.}

\item{depth.intron}{\code{integer}, extended depth into gene's flanks, default 300 nt.}

\item{remove.duplicate}{\code{logical}, whether (default to \code{TRUE}) to remove identical event duplicates (by keeping one).}

\item{verbose}{\code{logical}, whether (default to \code{TRUE}) to print out progress.}
}
\value{
a \code{surf} object with ATR event annotation and updated \code{genePartsList} slot.
}
\description{
This function parses ATR events (including AS, ATI, and APA) from genome annotation.
It also identifies location features for each event.
The latter task could be computationally demanding for unfiltered (raw) genome annotation.
}
\references{
Chen, F., & Keles, S. (2020). SURF: integrative analysis of a compendium of RNA-seq and CLIP-seq datasets highlights complex governing of alternative transcriptional regulation by RNA-binding proteins. \emph{Genome Biology}, 21(1), 1-23.
}
