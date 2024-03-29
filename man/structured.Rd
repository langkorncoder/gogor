% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/structured.R
\name{structured}
\alias{structured}
\title{Provides information about the structure of a dataframe}
\usage{
structured(newdf = NULL, to_csv = FALSE, output_file = "structured.csv")
}
\arguments{
\item{newdf}{The dataframe of interest}

\item{to_csv}{Logical; whether to write the dataframe to a .csv file}

\item{output_file}{The name of the output file}
}
\value{
A dataframe with information about the structure of the input dataframe
}
\description{
This function provides how the dataframe of your interest is structured. Names of column, their position, class, nrows, unique values and examples. Also gives possibility to export dataframe as .csv file.
}
