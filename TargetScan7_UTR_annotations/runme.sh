#######prepare 3p-seq data from tissues/cell lines mapped and counted
#######download BED files of individual tissues from TargetScan website and place in bed/ folder before running the commands below
#######download FlyBase6.18 annotations

#wget ftp://ftp.flybase.net/releases/current/dmel_r6.18/gff/dmel-all-no-analysis-r6.18.gff.gz
#cat bed/* >3Pseq_pA_allstages.bed.gz
#grep -P '^chr' 3Pseq_pA_allstages.bed | perl -ne '@a = split / /; print join("\t", @a); ' | gzip -c >3Pseq_pA_allstages.bed.gzip
#rm 3Pseq_pA_allstages.bed
#Rscript compute_bedfile_sum.R
#gzip 3Pseq_pA_allstages.summed

#######script to annotate longest 3' UTRs for each unique stop codon by utilizing 3'-seq-revised isoform information (derived from Sanfilippo et al., 2017, Additional File 7)
./choose_all_genes_for_TargetScan.pl | gzip -c >FlyBase-r6.18.forTScan.gff.gz
