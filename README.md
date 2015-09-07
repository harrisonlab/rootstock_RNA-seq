# rootstock_RNA-seq
#Tophat
```shell
./tophat.sh /home/deakig/projects/apple_rootstock/rna-seq/RNAseq_3/02-RNA_L1_1.fq.trim /home/deakig/projects/apple_rootstock/rna-seq/RNAseq_3/02-RNA_L1_2.fq.trim /home/groups/harrisonlab/project_files/rootstock_genetics/ref/v1/Md /home/deakig/projects/apple_rootstock/rna-seq/tophat/02 0 500
```
#cufflinks
```shell
./cufflinks.sh /home/deakig/projects/apple_rootstock/rna-seq/tophat/02/tophat_out/accepted_hits.bam /home/deakig/projects/apple_rootstock/rna-seq/cufflinks/02 8
```
#cuffmerge
```shell
./cuffquant.sh /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/tophat/02/tophat_out/accepted_hits.bam /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/cuffmerge/merged.gtf /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/cuffquant/02
```
#cuffdiff
```shell
cuffdiff -o cuffdiff -p 16 -b Malus_x_domestica.v1.0-primary.pseudo.fa -u cuffmerge/merged.gtf -L "M27B","M116B" cuffquant/03/abundances.cxb,cuffquant/05/abundances.cxb,cuffquant/07/abundances.cxb cuffquant/09/abundances.cxb,cuffquant/11/abundances.cxb,cuffquant/13/abundances.cxb
```
#cummeRbund
Rscript cumme.R
