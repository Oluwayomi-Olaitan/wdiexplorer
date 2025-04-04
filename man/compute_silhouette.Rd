% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/compute_silhouette.R
\name{compute_silhouette}
\alias{compute_silhouette}
\title{Compute silhouette analysis to the matrix output of the dissimilarity distance of WDI data}
\usage{
compute_silhouette(matrix, group_data, group_var)
}
\arguments{
\item{matrix}{A matrix generated by \code{\link{compute_dissimilarity}}}

\item{group_data}{A data frame containing country information and the inherent grouping variable of the data}

\item{group_var}{An inherent variable of the WDI data as the grouping variable}
}
\value{
A data frame with country, average dissimilarity distance, group, neighbouring group, group_wise average dissimilarity distance, and the sil_width
}
\description{
Compute silhouette analysis to the matrix output of the dissimilarity distance of WDI data
}
\examples{
dist_mat <- compute_dissimilarity(data = pisa_data, index = "LO.PISA.MAT")
silhouette_score <- compute_silhouette(matrix = dist_mat,
            group_data = country_groups, group_var = "region")
}
\seealso{
\code{\link[=compute_dissimilarity]{compute_dissimilarity()}} to compute the matrix
}
