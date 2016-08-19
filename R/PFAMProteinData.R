#' PFAMProteinData: A package for computating the notorious bar statistic.
#'
#' The PFAMProteinData package provides a single table that defines the boundaries of each
#' UniProt protein with each PFAM domain, and also provides the start and end of each of the domains.
#' The code to generate this table can be found in the data-raw directory and the ultimate source of the
#' data is the PFAM-A.full.uniprot.gz file available at the PFAM ftp site.
#'
#' The current release is derived from PFAM release 30.
#'
#'
#' @docType package
#' @name PFAMProteinData
NULL

#' PFAM boundaries for all UniProt proteins: Part1
#'
#' This table defines the boundaries of all PFAM domains against all UniProt proteins. It is a direct derivative of the PFAM-A.full.uniprot.gz
#' file available on the PFAM ftp website.
#'
#' @format A  \code{\link[data.table]{data.table}} with 71810937 rows and 4 variables, with the key set on the PFAM_ID column:
#' \describe{
#'   \item{PFAM_ID}{PFAM unique identifier}
#'   \item{UNIPROT_ACC}{the accession of the UniProtID}
#'   \item{START}{start of the PFAM hmm match of the PFAM_ID against teh UNIPROT_ACC}
#'   \item{END}{end of the PFAM hmm match of the PFAM_ID against teh UNIPROT_ACC}
#' }
#' @source \url{ftp://ftp.ebi.ac.uk/pub/databases/Pfam/current_release}
"PFAM_data1"

#' PFAM boundaries for all UniProt proteins: Part2
#'
#' This table defines the boundaries of all PFAM domains against all UniProt proteins. It is a direct derivative of the PFAM-A.full.uniprot.gz
#' file available on the PFAM ftp website.
#'
#' @format A  \code{\link[data.table]{data.table}} with 71810937 rows and 4 variables, with the key set on the PFAM_ID column:
#' \describe{
#'   \item{PFAM_ID}{PFAM unique identifier}
#'   \item{UNIPROT_ACC}{the accession of the UniProtID}
#'   \item{START}{start of the PFAM hmm match of the PFAM_ID against teh UNIPROT_ACC}
#'   \item{END}{end of the PFAM hmm match of the PFAM_ID against teh UNIPROT_ACC}
#' }
#' @source \url{ftp://ftp.ebi.ac.uk/pub/databases/Pfam/current_release}
"PFAM_data2"

#' PFAM boundaries for all UniProt proteins: Part3
#'
#' This table defines the boundaries of all PFAM domains against all UniProt proteins. It is a direct derivative of the PFAM-A.full.uniprot.gz
#' file available on the PFAM ftp website.
#'
#' @format A  \code{\link[data.table]{data.table}} with 71810937 rows and 4 variables, with the key set on the PFAM_ID column:
#' \describe{
#'   \item{PFAM_ID}{PFAM unique identifier}
#'   \item{UNIPROT_ACC}{the accession of the UniProtID}
#'   \item{START}{start of the PFAM hmm match of the PFAM_ID against teh UNIPROT_ACC}
#'   \item{END}{end of the PFAM hmm match of the PFAM_ID against teh UNIPROT_ACC}
#' }
#' @source \url{ftp://ftp.ebi.ac.uk/pub/databases/Pfam/current_release}
"PFAM_data3"

#' PFAM boundaries for all UniProt proteins: Part4
#'
#' This table defines the boundaries of all PFAM domains against all UniProt proteins. It is a direct derivative of the PFAM-A.full.uniprot.gz
#' file available on the PFAM ftp website.
#'
#' @format A  \code{\link[data.table]{data.table}} with 71810937 rows and 4 variables, with the key set on the PFAM_ID column:
#' \describe{
#'   \item{PFAM_ID}{PFAM unique identifier}
#'   \item{UNIPROT_ACC}{the accession of the UniProtID}
#'   \item{START}{start of the PFAM hmm match of the PFAM_ID against teh UNIPROT_ACC}
#'   \item{END}{end of the PFAM hmm match of the PFAM_ID against teh UNIPROT_ACC}
#' }
#' @source \url{ftp://ftp.ebi.ac.uk/pub/databases/Pfam/current_release}
"PFAM_data4"

#' PFAM boundaries for all UniProt proteins: Part4
#'
#' This table defines the boundaries of all PFAM domains against all UniProt proteins. It is a direct derivative of the PFAM-A.full.uniprot.gz
#' file available on the PFAM ftp website.
#'
#' @format A  \code{\link[data.table]{data.table}} with 71810937 rows and 4 variables, with the key set on the PFAM_ID column:
#' \describe{
#'   \item{PFAM_ID}{PFAM unique identifier}
#'   \item{UNIPROT_ACC}{the accession of the UniProtID}
#'   \item{START}{start of the PFAM hmm match of the PFAM_ID against teh UNIPROT_ACC}
#'   \item{END}{end of the PFAM hmm match of the PFAM_ID against teh UNIPROT_ACC}
#' }
#' @source \url{ftp://ftp.ebi.ac.uk/pub/databases/Pfam/current_release}
"PFAM_data5"
