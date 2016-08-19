#' load pfam
#'
#' a convenience function to load the PFAM data files and combine them together
#' into a single table. The resulting data.table is ~360Mb.
#'
#' @importFrom data.table rbindlist setkey
#' @export
#'
load_pfam <- function() {
  data(PFAM_data1)
  data(PFAM_data2)
  data(PFAM_data3)
  data(PFAM_data4)
  data(PFAM_data5)

  bigtable <- rbindlist(list(PFAM_data1, PFAM_data2, PFAM_data3, PFAM_data4, PFAM_data5))
  setkey(bigtable, "PFAM_ID")

  #remove the individual tables form the Global Environment
  objs <- ls(pos = ".GlobalEnv")
  rm(list = objs[grep("PFAM_data", objs)], pos = ".GlobalEnv")

  return(bigtable)
}
