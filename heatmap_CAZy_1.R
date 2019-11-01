library("gplots")
library("RColorBrewer")
data <- read.table("CAZy_comp_1.txt",sep="\t",header=TRUE)
rnames <- data[,1]
Species=c("S. lycopersicum","A. arborescens","A. alternata","A. alternata PN2","A. alternata PN1","A. brassicae","A. brassicicola","A. carthami","A. cassiae","A. dauci","A. destruens","A. fragariae","A. gaisen","A. longipes","A. mali","A. macrospora","A. porri","A. solani","A. tenuissima")
cnames <- Species
mat_data <- data.matrix(data[,2:ncol(data)])
colnames(mat_data) <- cnames
rownames(mat_data) <- rnames
dr = dist(mat_data, method = "euclidean")
dc = dist(t(mat_data), method = "euclidean")
cr = hclust(dr, method = "complete")
cc = hclust(dc, method = "complete")
colour=brewer.pal(9,"OrRd")
colour=colorRampPalette(colour)(300)
tiff(file = "heatmap_new.tiff", width = 1650, height = 3450, res = 300, pointsize = 10)
heatmap.2(mat_data,trace="none",Colv=as.dendrogram(cc),col=colour,Rowv=FALSE,cexCol=2,labCol=as.expression(lapply(colnames(mat_data), function(a) bquote(italic(.(a))))), ColSideColors = c(rep("#D95F02",1),rep("#66A61E",18)), margins=c(20,8),  density.info="none", keysize= 0.75)
dev.off()
tiff(file = "heatmap_11.tiff", width = 4*700, height = 5*850, res = 300, pointsize = 8)
heatmap.2(mat_data,trace="none",Colv=as.dendrogram(cc),Rowv=FALSE,col=colour,ColSideColors = c(rep("#1B9E77",7),rep("#D95F02",1),rep("#7570B3",1),rep("#E7298A",4),rep("#66A61E",18)), margins=c(9,6))
dev.off()


?heatmap.2
