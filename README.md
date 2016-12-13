# rootstock_RNA-seq
##Tophat workflow
Requires bowtie 2 (I think)
###tophat
Requires tophat, tophat.sh, sumbit_tophat.sh, paired end reads (pretrimmed) and a bowtie indexed reference genome

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
###cufflinks
Requires cufflinks, cufflinks.sh, submit_cufflinks.sh and tophat bam file

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
###cuffmerge
Requires cuffmerge, cufflinks gtf files (gtf_files.txt) and optionally a reference genome gtf

gtf_files.txt contains a list of paths to the cufflinks transcripts.gtf files 
```shell
cuffmerge -g apple_v1_transcripts.gtf -o merged.gtf -p 16 -s /home/deakig/projects/apple_rootstock/rna-seq/cuff_workflow/Malus_x_domestica.v1.0-primary.pseudo.fa gtf_files.txt 
```
###cuffquant
requires cuffquant, cuffquant.sh, submit_cuffquant.sh, tophat bam file and cuffmerge gtf file

./cuffquant.sh tophat.bam merged.gtf outdir
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
###cuffdiff
Calculates differential expression between two conditions/treatments  
requires cuffdif, reference genome (optional??), cuffmerge gtf, cuffquant cxb files treatment 1 and cuffquant cxb files treatment 2 
```shell
cuffdiff -o cuffdiff -p 16 -b Malus_x_domestica.v1.0-primary.pseudo.fa -u cuffmerge/merged.gtf -L "M27B","M116B" cuffquant/03/abundances.cxb,cuffquant/05/abundances.cxb,cuffquant/07/abundances.cxb cuffquant/09/abundances.cxb,cuffquant/11/abundances.cxb,cuffquant/13/abundances.cxb
```
###cummeRbund
R scripts contained in cumme.R

cummeRbund requires Rcurl to be installed - which depends on libcurl. This can be a bit of a pain to get working, but the below might help...

```shell
apt-get source libcurl4-gnutls-dev
cd curl-7.26.0/
./configure --prefix=$HOME/usr/local
cp lib.libs/libcurl.so.4.2.0 $HOME/usr/local/.
cp -r include/curl $HOME/usr/local/include/
cp libcurl.pc $HOME/usr/local/lib/pkgconfig/.

ln -S $HOME/usr/local/libcurl.so $HOME/usr/local/libcurl.so.4.2.0
ln -S $HOME/usr/local/libcurl.so.4 $HOME/usr/local/libcurl.so.4.2.0

# replace $HOME with full path or probably won't work
PKG_CONFIG_PATH=$HOME//usr/local/lib/pkgconfig/
export PKG_CONFIG_PATH
pkg-config libcurl --libs
R CMD install.packages(Rcurl) # or something like this - can't remeber how to use R CMD, could just start an R session. 

```




#De novo assembly with Trinity

##Installing Trinity
download and install from:
https://github.com/trinityrnaseq/trinityrnaseq/wiki

Requires bowtie 1

##configure for SGE cluster
created file SGE.conf with settings appropriate for our environment

##Assemble
Created scripts assembly.sh and submit_assembly.sh
```shell
./assmbly.sh somefile.fq trinity_outdir
```


