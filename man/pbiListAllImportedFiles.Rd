% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pbiListAllImportedFiles.R
\name{pbiListAllImportedFiles}
\alias{pbiListAllImportedFiles}
\title{List all imported files.}
\usage{
pbiListAllImportedFiles(toDf = TRUE)
}
\arguments{
\item{toDf}{When TRUE, a tabular format is returned. When FALSE, more detailed content is returned as JSON.}
}
\value{
Data frame.
}
\description{
Return a data frame containing detailed information about all of the imported data on your Power BI web service. You will be able to join with other queries on the IDs. Requires authentication before it can be executed.
}
\examples{
\dontrun{pbiListAllImportedFiles()}
}
