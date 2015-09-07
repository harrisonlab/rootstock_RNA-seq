biocLite("cummeRbund")
library(cummeRbund)
##(might need lib-curl-dev installed - goodluck!)
cuff<-readCufflinks()
annot<-read.csv("apple_annotation.csv")
addFeatures(cuff,annot,level="genes")
#data investigation

pdf("disp_plot.pdf")
dispersionPlot(genes(cuff))
dev.off()

pdf("scv_genes_plot.pdf")
fpkmSCVPlot(genes(cuff))
dev.off()

pdf("scv_isoforms_plot.pdf")
fpkmSCVPlot(isoforms(cuff))
dev.off()

pdf("csDensity.pdf")
csDensity(genes(cuff))
dev.off()

pdf("csDensity_reps.pdf")
csDensity(genes(cuff),replicates=T)
dev.off()

pdf("csBoxplot.pdf")
csBoxplot(genes(cuff))
dev.off()

pdf("csBoxplot_t.pdf")
csBoxplot(genes(cuff),replicates=T)
dev.off()

pdf("csScatterMatrix.pdf")
csScatterMatrix(genes(cuff))
dev.off()

pdf("csScatterMatrix_t.pdf")
csScatter(genes(cuff),"M27B","M116B",smooth=T)
dev.off()

pdf("csDendro.pdf")
csDendro(genes(cuff))
dev.off()

pdf("csScatterMatrix_t.pdf")
csDendro(genes(cuff),replicates=T)
dev.off()

pdf("MAplot.pdf")
MAplot(genes(cuff),"M27B","M116B")
dev.off()
