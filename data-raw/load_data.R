library(data.table)

PFAM_data <- fread("data-raw/combined_pfams.csv", header=FALSE, col.names = c("PFAM_ID", "UNIPROT_ACC", "START", "END"))
PFAM_data$PFAM_ID <- gsub("\\.[0-9]*$", "", PFAM_data$PFAM_ID)
PFAM_data$UNIPROT_ACC <- gsub("\\.[0-9]*$", "", PFAM_data$UNIPROT_ACC)
setkey(PFAM_data, "PFAM_ID")

#data(PFAM_data)

# To Put up on Github each file must be less thant 100Mb. Splitting the table into four
# parts to get below this limit

PFAM_data1 <- PFAM_data[00000001:15000000,]
PFAM_data2 <- PFAM_data[15000001:30000000,]
PFAM_data3 <- PFAM_data[30000001:45000000,]
PFAM_data4 <- PFAM_data[45000001:60000000,]
PFAM_data5 <- PFAM_data[60000001:75000000,]
PFAM_data5 <- na.omit(PFAM_data5)

#devtools::use_data(PFAM_data, overwrite=TRUE)
devtools::use_data(PFAM_data1, overwrite=TRUE)
devtools::use_data(PFAM_data2, overwrite=TRUE)
devtools::use_data(PFAM_data3, overwrite=TRUE)
devtools::use_data(PFAM_data4, overwrite=TRUE)
devtools::use_data(PFAM_data5, overwrite=TRUE)

