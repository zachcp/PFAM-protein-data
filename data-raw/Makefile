pfamtables  = pfamtables
splitbypfam = split_by_PFAM

## Create PFAMs

# Version 30 - 6.9 GB gzipped  /59 GB unzipped
Pfam-A.full.uniprot.gz:
	wget ftp://ftp.ebi.ac.uk/pub/databases/Pfam/current_release/Pfam-A.full.uniprot.gz

# splits the PFAM into per-pfam files. takes a while
$(splitbypfam)/xx00: Pfam-A.full.uniprot.gz
	mkdir -p $(splitbypfam)
	cd split_by_PFAM; zcat Pfam-A.full.uniprot.gz | csplit - '/^\# STOCKHOLM 1.0/'  {*} --elide-empty-files

$(pfamtables)/PF00501.1: $(splitbypfam)/xx00
	mkdir -p $(pfamtables)
	find split_by_PFAM -type f | parallel 'python PFAM_parser.py --infile {} --outdir $(pfamtables)'

combined_pfams.csv: $(pfamtables)/PF00501.1
	cat $(pfamtables)/*.csv > $@

all: combined_pfams.csv
