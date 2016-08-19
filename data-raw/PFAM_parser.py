import click
import re
import pandas as pd

@click.command()
@click.option('--infile', type=click.File('r'), help='Input PFAM File')
@click.option('--outdir', default = ".", help='Output 4C column file')
def parse_PFAM(infile, outdir):
    """
    Simple Program that will take a PFAM file and return a four column table
    contianing:

    1. PFAMID
    2. UniProt Protein Accession
    3. Start of the Domain
    4. End of the Domain

    """

    accessionline = "#=GF AC"
    pfamid = None
    proteinids = []

    currentline= ""
    for idx, line in enumerate(infile):

        currentline = line

        if idx == 0:
            if not "STOCKHOLM 1.0" in line:
                raise ValueError("PFAM files must begin with the format declaration line")

        if line[0] == "#":
            if re.match(accessionline, line):
                pfamid = line.replace(accessionline, "").strip()
                assert(pfamid.startswith("PF"))
        elif line[0] == "/":
            pass
        else:
            prot, aln = line.split()
            proteinids.append((pfamid, prot))

    # check to be sure the final line was the expected file-clsoe delimiter
    if not re.match("//", currentline):
        raise ValueError("This PFAM files does not end with the corect delimiter")
    # be sure the PFAM id is correct
    if not pfamid:
        raise ValueError("A PFAM Accession could not be identified for this file")
    # check against the possiblity that there are no members in the alignment
    if not proteinids:
        raise ValueError("PFAM processing issue. No alignment identified. Please chek the format of this file.")

    df = pd.DataFrame(proteinids,  columns = ["PFAM_ID", "Protein"])

    #A0A0C2W4Q1.1/7-175
    df['start'] = df.Protein.str.split("/").str[1].str.split("-").str[0]
    df['end']   = df.Protein.str.split("/").str[1].str.split("-").str[1]
    df['Protein'] = df.Protein.str.split("/").str[0]

    df.to_csv("{}/{}.csv".format(outdir, pfamid), index=False,  header=False)


if __name__ == '__main__':
    parse_PFAM()
