# PFAMProteinData

This package provides a table that provides the location of every PFAM
alignment to all UniProt proteins. It is the exact same information
obtained from the PFAM-A.full.uniprot file avaiable on the PFAM
website but provided in tabular format for faster subsetting.

In order to host this on Github, the data is chunked into 5 pieces.
A convenience function is provided to load the data as a single data.table

(note: this is a big table  (~360Mb compressed) and it will take time to devcompress.)

## Basic Use

```[r]
library(PFAMProteinData)

# this may take some time ...
PFAM_data <- load_pfam()

# ....its a big table
dim(PFAM_data)
#[1] 71810937        4

pryr::object_size(PFAM_data)
#4.15 GB

# its a data.table so you can subset on the keyed column
PFAM_data['PF00001']

#   PFAM_ID UNIPROT_ACC START END
#  1: PF00001      Q4SMD5    38 265
#  2: PF00001      Q4SMD5   310 424
#  3: PF00001      Q4SMD5   436 518
#  4: PF00001      Q4SMD5   515 599
#  5: PF00001      Q4SMD5   596 804
    
```
