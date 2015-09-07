# rootstock_RNA-seq
#Tophat workflow
Requires bowtie 2 (I think) and 
#tophat
./tophat.sh PE_F.fa PE_R.fa bowtie_index outdir -I (minimum fragment length) -X (maximum fragment length)
```shell
./tophat.sh /home/deakig/projects/apple_rootstock/rna-seq/RNAseq_3/02-RNA_L1_1.fq.trim /home/deakig/projects/apple_rootstock/rna-seq/RNAseq_3/02-RNA_L1_2.fq.trim /home/groups/harrisonlab/project_files/rootstock_genetics/ref/v1/Md /home/deakig/projects/apple_rootstock/rna-seq/tophat/02 0 500
./tophat.sh /home/deakig/projects/apple_rootstock/rna-seq/RNAseq_3/03-RNA_L1_1.fq.trim /home/deakig/projects/apple_rootstock/rna-seq/RNAseq_3/03-RNA_L1_2.fq.trim /home/groups/harrisonlab/project_files/rootstock_genetics/ref/v1/Md /home/deakig/projects/apple_rootstock/rna-seq/tophat/03 0 500
./tophat.sh /home/deakig/projects/apple_rootstock/rna-seq/RNAseq_3/04-RNA_L1_1.fq.trim /home/deakig/projects/apple_rootstock/rna-seq/RNAseq_3/04-RNA_L1_2.fq.trim /home/groups/harrisonlab/project_files/rootstock_genetics/ref/v1/Md /home/deakig/projects/apple_rootstock/rna-seq/tophat/04 0 500
./tophat.sh /home/deakig/projects/apple_rootstock/rna-seq/RNAseq_3/05-RNA_L1_1.fq.trim /home/deakig/projects/apple_rootstock/rna-seq/RNAseq_3/05-RNA_L1_2.fq.trim /home/groups/harrisonlab/project_files/rootstock_genetics/ref/v1/Md /home/deakig/projects/apple_rootstock/rna-seq/tophat/05 0 500
./tophat.sh /home/deakig/projects/apple_rootstock/rna-seq/RNAseq_2/06-RNA_L1_1.fq.trim /home/deakig/projects/apple_rootstock/rna-seq/RNAseq_2/06-RNA_L1_2.fq.trim /home/groups/harrisonlab/project_files/rootstock_genetics/ref/v1/Md /home/deakig/projects/apple_rootstock/rna-seq/tophat/06 0 500
./tophat.sh /home/deakig/projects/apple_rootstock/rna-seq/RNAseq_2/07-RNA_L1_1.fq.trim /home/deakig/projects/apple_rootstock/rna-seq/RNAseq_2/07-RNA_L1_2.fq.trim /home/groups/harrisonlab/project_files/rootstock_genetics/ref/v1/Md /home/deakig/projects/apple_rootstock/rna-seq/tophat/07 0 500
./tophat.sh /home/deakig/projects/apple_rootstock/rna-seq/RNAseq_2/08-RNA_L1_1.fq.trim /home/deakig/projects/apple_rootstock/rna-seq/RNAseq_2/08-RNA_L1_2.fq.trim /home/groups/harrisonlab/project_files/rootstock_genetics/ref/v1/Md /home/deakig/projects/apple_rootstock/rna-seq/tophat/08 0 500
./tophat.sh /home/deakig/projects/apple_rootstock/rna-seq/RNAseq_2/09-RNA_L1_1.fq.trim /home/deakig/projects/apple_rootstock/rna-seq/RNAseq_2/09-RNA_L1_2.fq.trim /home/groups/harrisonlab/project_files/rootstock_genetics/ref/v1/Md /home/deakig/projects/apple_rootstock/rna-seq/tophat/09 0 500
./tophat.sh /home/deakig/projects/apple_rootstock/rna-seq/RNAseq_1/10-RNA_L1_1.fq.trim /home/deakig/projects/apple_rootstock/rna-seq/RNAseq_1/10-RNA_L1_2.fq.trim /home/groups/harrisonlab/project_files/rootstock_genetics/ref/v1/Md /home/deakig/projects/apple_rootstock/rna-seq/tophat/10 0 500
./tophat.sh /home/deakig/projects/apple_rootstock/rna-seq/RNAseq_1/11-RNA_L1_1.fq.trim /home/deakig/projects/apple_rootstock/rna-seq/RNAseq_1/11-RNA_L1_2.fq.trim /home/groups/harrisonlab/project_files/rootstock_genetics/ref/v1/Md /home/deakig/projects/apple_rootstock/rna-seq/tophat/11 0 500
./tophat.sh /home/deakig/projects/apple_rootstock/rna-seq/RNAseq_1/12-RNA_L1_1.fq.trim /home/deakig/projects/apple_rootstock/rna-seq/RNAseq_1/12-RNA_L1_2.fq.trim /home/groups/harrisonlab/project_files/rootstock_genetics/ref/v1/Md /home/deakig/projects/apple_rootstock/rna-seq/tophat/12 0 500
./tophat.sh /home/deakig/projects/apple_rootstock/rna-seq/RNAseq_1/13-RNA_L1_1.fq.trim /home/deakig/projects/apple_rootstock/rna-seq/RNAseq_1/13-RNA_L1_2.fq.trim /home/groups/harrisonlab/project_files/rootstock_genetics/ref/v1/Md /home/deakig/projects/apple_rootstock/rna-seq/tophat/13 0 500
```
#cufflinks
./cufflinks tophat.bam outdir num_processors  
```shell
./cufflinks.sh /home/deakig/projects/apple_rootstock/rna-seq/tophat/02/tophat_out/accepted_hits.bam /home/deakig/projects/apple_rootstock/rna-seq/cufflinks/02 8
./cufflinks.sh /home/deakig/projects/apple_rootstock/rna-seq/tophat/03/tophat_out/accepted_hits.bam /home/deakig/projects/apple_rootstock/rna-seq/cufflinks/03 8
./cufflinks.sh /home/deakig/projects/apple_rootstock/rna-seq/tophat/04/tophat_out/accepted_hits.bam /home/deakig/projects/apple_rootstock/rna-seq/cufflinks/04 8
./cufflinks.sh /home/deakig/projects/apple_rootstock/rna-seq/tophat/05/tophat_out/accepted_hits.bam /home/deakig/projects/apple_rootstock/rna-seq/cufflinks/05 8
./cufflinks.sh /home/deakig/projects/apple_rootstock/rna-seq/tophat/06/tophat_out/accepted_hits.bam /home/deakig/projects/apple_rootstock/rna-seq/cufflinks/06 8
./cufflinks.sh /home/deakig/projects/apple_rootstock/rna-seq/tophat/07/tophat_out/accepted_hits.bam /home/deakig/projects/apple_rootstock/rna-seq/cufflinks/07 8
./cufflinks.sh /home/deakig/projects/apple_rootstock/rna-seq/tophat/08/tophat_out/accepted_hits.bam /home/deakig/projects/apple_rootstock/rna-seq/cufflinks/08 8
./cufflinks.sh /home/deakig/projects/apple_rootstock/rna-seq/tophat/09/tophat_out/accepted_hits.bam /home/deakig/projects/apple_rootstock/rna-seq/cufflinks/09 8
./cufflinks.sh /home/deakig/projects/apple_rootstock/rna-seq/tophat/10/tophat_out/accepted_hits.bam /home/deakig/projects/apple_rootstock/rna-seq/cufflinks/10 8
./cufflinks.sh /home/deakig/projects/apple_rootstock/rna-seq/tophat/11/tophat_out/accepted_hits.bam /home/deakig/projects/apple_rootstock/rna-seq/cufflinks/11 8
./cufflinks.sh /home/deakig/projects/apple_rootstock/rna-seq/tophat/12/tophat_out/accepted_hits.bam /home/deakig/projects/apple_rootstock/rna-seq/cufflinks/12 8
./cufflinks.sh /home/deakig/projects/apple_rootstock/rna-seq/tophat/13/tophat_out/accepted_hits.bam /home/deakig/projects/apple_rootstock/rna-seq/cufflinks/13 8
```
#cuffmerge
gtf_files.txt contains a list of paths to the cufflinks transcripts.gtf files 
```shell
cuffmerge -g apple_v1_transcripts.gtf -o merged.gtf -p 16 -s /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/Malus_x_domestica.v1.0-primary.pseudo.fa gtf_files.txt 
```
#cuffquant
./cuffquant tophat.bam merged.gtf outdir
```shell
./cuffquant.sh /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/tophat/02/tophat_out/accepted_hits.bam /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/cuffmerge/merged.gtf /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/cuffquant/02
./cuffquant.sh /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/tophat/03/tophat_out/accepted_hits.bam /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/cuffmerge/merged.gtf /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/cuffquant/03
./cuffquant.sh /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/tophat/04/tophat_out/accepted_hits.bam /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/cuffmerge/merged.gtf /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/cuffquant/04
./cuffquant.sh /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/tophat/05/tophat_out/accepted_hits.bam /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/cuffmerge/merged.gtf /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/cuffquant/05
./cuffquant.sh /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/tophat/06/tophat_out/accepted_hits.bam /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/cuffmerge/merged.gtf /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/cuffquant/06
./cuffquant.sh /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/tophat/07/tophat_out/accepted_hits.bam /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/cuffmerge/merged.gtf /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/cuffquant/07
./cuffquant.sh /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/tophat/08/tophat_out/accepted_hits.bam /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/cuffmerge/merged.gtf /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/cuffquant/08
./cuffquant.sh /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/tophat/09/tophat_out/accepted_hits.bam /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/cuffmerge/merged.gtf /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/cuffquant/09
./cuffquant.sh /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/tophat/10/tophat_out/accepted_hits.bam /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/cuffmerge/merged.gtf /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/cuffquant/10
./cuffquant.sh /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/tophat/11/tophat_out/accepted_hits.bam /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/cuffmerge/merged.gtf /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/cuffquant/11
./cuffquant.sh /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/tophat/12/tophat_out/accepted_hits.bam /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/cuffmerge/merged.gtf /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/cuffquant/12
./cuffquant.sh /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/tophat/13/tophat_out/accepted_hits.bam /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/cuffmerge/merged.gtf /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/cuffquant/13
```
#cuffdiff
```shell
cuffdiff -o cuffdiff -p 16 -b Malus_x_domestica.v1.0-primary.pseudo.fa -u cuffmerge/merged.gtf -L "M27B","M116B" cuffquant/03/abundances.cxb,cuffquant/05/abundances.cxb,cuffquant/07/abundances.cxb cuffquant/09/abundances.cxb,cuffquant/11/abundances.cxb,cuffquant/13/abundances.cxb
```
#cummeRbund
Rscript cumme.R
