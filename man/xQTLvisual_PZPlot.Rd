% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/visualize.R
\name{xQTLvisual_PZPlot}
\alias{xQTLvisual_PZPlot}
\title{Compare P-values reported in the association result file to P-values calculated from Z statistics derived from the reported beta and standard error.}
\usage{
xQTLvisual_PZPlot(
  summaryDT,
  binCutLogP = 4,
  binNumber = 2000,
  distribution_func = "pnorm"
)
}
\arguments{
\item{summaryDT}{A data.frame with three cols: pval,  beta, se.}

\item{binCutLogP}{To speed up the rendering process of the plot for tens of millions of GWAS variants, variants with a p-value below a specified threshold (binCutLogP) are randomly sampled for display.}

\item{binNumber}{The number of points randomly selected for plotting.}

\item{distribution_func}{"pnorm"(default) or "pchisq"}
}
\value{
a list containing a data.frame of estimated pvalues and A ggplot2 object
}
\description{
Compare P-values reported in the association result file to P-values calculated from Z statistics derived from the reported beta and standard error.
}
\examples{
\donttest{
url1 <- "https://raw.githubusercontent.com/dingruofan/exampleData/master/gwasDFsub_MMP7.txt"
sumDT <- data.table::fread(url1, sep="\t")
xQTLvisual_PZPlot(sumDT[,.(pValue, beta, se)], distribution_func="pchisq")
}
}