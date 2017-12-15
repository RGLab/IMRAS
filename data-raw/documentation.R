#' IMRAS
#' A data package for IMRAS.
#' @docType package
#' @aliases IMRAS-package
#' @title IMRAS
#' @name IMRAS
#' @description Raw read counts and TPM values for IMRAS RNASeq assay.
#' @details \code{ExpressionSet}s count_eset (raw counts) and tpm_eset (tpm values) generated with STAR and RSEM pipeline. 
#' @seealso
#' \link{count_eset}
#' \link{tpm_eset}
NULL



#' Raw read counts of IMRAS RNASeq data.
#' @name count_eset
#' @docType data
#' @title Raw read counts
#' @format An \code{ExpressionSet} containing the following fields:
#' \describe{
#'  \item{\code{assayData}:}{Matrix of class \code{numeric} containing raw read counts generated from STAR+RSEM in R package RNASeqPipelineR. Each row is a gene and each column is a sample. Row names are gene symbols.}
#'    \item{\code{phenoData}:}{Matrix of mixed class, containing phenotype
#' (experimental design) data for each sample. Each row matches the corresponding column in assayData. Each column is an experimental factor}
#'    \item{\code{featureData}:}{Matrix of class \code{character} defining the gene annoations in assayData. Each row maps to the corresponding row in assayData.}
#' }
#' @source The data comes from the IMRAS project.
#' @seealso
#' \link{IMRAS}
#' \link{tpm_eset}
NULL



#' Transcript per million (TPM) values of IMRAS RNASeq data.
#' @name tpm_eset
#' @docType data
#' @title TPM values
#' @format a \code{ExpressionSet} containing the following fields:
#' \describe{
#'  \item{\code{assayData}:}{Matrix of class \code{numeric} containing TPM values generated from STAR+RSEM in R package RNASeqPipelineR. Each row is a gene and each column is a sample. Row names are gene symbols.}
#'    \item{\code{phenoData}:}{Matrix of mixed class, containing phenotype
#' (experimental design) data for each sample. Each row matches the corresponding column in assayData. Each column is an experimental factor}
#'    \item{\code{featureData}:}{Matrix of class \code{character} defining the gene annoations in assayData. Each row maps to the corresponding row in assayData.}
#' }
#' @source The data comes from the IMRAS project.
#' @seealso
#' \link{IMRAS}
#' \link{count_eset}
NULL



