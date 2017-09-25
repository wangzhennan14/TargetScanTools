### cuffdiff/ contains the full list of fold changes for all genes in D. melanogaster
### diff_uncorrected/ contains fold changes computed from cuffdiff, with lowly expressed genes filtered out
### diff_plsr_corrected/ contains fold changes corrected by the first round of normalization (Figure 1-FS1B-D)

### code to identify target site counts from Fasta files of UTRs and ORFs
#export SEQBASE=./fly6_07.3utrs.fa
#export SEQBASEORF=./dm6.flybase.orfs
#export SEQBASE5UTR=./dm6.flybase.5utrs
#export SITES=./targetsites_plsr_normalized
#export MIRSEQFILE=./microRNAs.txt
#./site_counts.pl

#echo "normalizing data"
#Rscript normalization.R targetsites_plsr_normalized/*

echo "generating Fig1C data, uncomment different sections to evaluate Fig1A,D-E"
Rscript Fig1_cdfs.R targetsites_normalized/*
