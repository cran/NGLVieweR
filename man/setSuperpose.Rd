% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NGLVieweR.R
\name{setSuperpose}
\alias{setSuperpose}
\title{Set superpose}
\usage{
setSuperpose(
  NGLVieweR,
  reference = 1,
  sele_reference,
  sele_target,
  superpose = TRUE
)
}
\arguments{
\item{NGLVieweR}{A NGLVieweR object.}

\item{reference}{The index of the reference structure to align other
structures to. Defaults to 1 (the first loaded structure).}

\item{sele_reference}{Selection string for the reference structure,
specifying which parts to align. Mandatory.}

\item{sele_target}{Selection string for each target structure, specifying
which parts to align. Mandatory.}

\item{superpose}{Logical; if \code{TRUE} (default), enable superposition of
multiple structures. Set to \code{FALSE} to disable.}
}
\value{
Sets the \code{superpose} list in the \code{NGLVieweR} \code{htmlwidgets}
object.
}
\description{
Enable or disable superposition of multiple structures, with
options to specify the reference structure and selection strings for
alignment.
}
\examples{
NGLVieweR("1GZM") \%>\%
  addRepresentation("cartoon", param = list(color = "blue")) \%>\%
  addStructure("1U19") \%>\%
  addRepresentation("cartoon", param = list(color = "orange")) \%>\%
  setSuperpose(
    reference = 1, 
    sele_reference = ":A", 
    sele_target = ":A", 
    superpose = TRUE
  )
}
