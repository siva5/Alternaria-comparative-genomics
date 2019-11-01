library('ggplot2')


rnum <- read.table("Repeat_number_1.txt",header=T)
rnum1 <- rnum[which(rnum$Repeats!="Unknown" & rnum$Repeats!="Simple_repeat" & rnum$Repeats!="Low_complexity" & rnum$Repeats!="Satellite" & rnum$Repeats!="rRNA"),]
rnum1$Species <- factor(rnum1$Species, levels = c("Abr","Abrc","Asl","Alat","Aat_PN1","Aat_PN2"))
tiff(file = "bubble_chart_number_1.tiff", width = 2*600, height = 2*1000, res = 300, pointsize = 8)
ggplot(rnum1,aes(x = Species, y = Repeats)) + geom_text(aes(label=Number), size=2, nudge_x=0.0, nudge_y=0.0) + geom_point(aes(size = Number,colour = Repeats), alpha = 0.4) + scale_size(range = c(1,20)) + theme_bw() + scale_x_discrete(labels=c("A. brassicae (J3)","A. brassicicola (abra43)","A. solani (altNL03003)","A. alternata (ATCC 34957)","A. alternata (PN1)","A. alternata (PN2)","A. gaisen (FERA 650)","A. tenuissima (FERA 1166)")) + theme(axis.text.x  = element_text(face="italic",angle=75,vjust=1,hjust=1),legend.position = "none") + labs(x=NULL,y=NULL)
dev.off()




rlen <- read.table("Repeat_length_1.txt",header=T)
rlen1 <- rlen[which(rlen$Repeats!="Unknown" & rlen$Repeats!="Simple_repeat" & rlen$Repeats!="Low_complexity" & rlen$Repeats!="Satellite" & rlen$Repeats!="rRNA"),]
rlen1$Species <- factor(rlen1$Species, levels = c("Abr","Abrc","Asl","Alat","Aat_PN1","Aat_PN2"))
tiff(file = "bubble_chart_length.tiff", width = 2*700, height = 2*1000, res = 300, pointsize = 8)
ggplot(rlen1,aes(x = Species, y = Repeats)) + geom_text(aes(label=Length), size=2, nudge_x=0.0, nudge_y=0.0) + geom_point(aes(size = sqrt(Length),colour = Repeats), alpha = 0.4) + scale_size(range = c(1,20)) + theme_bw() + scale_x_discrete(labels=c("A. brassicae (J3)","A. brassicicola (abra43)","A. solani (altNL03003)","A. alternata (ATCC 34957)","A. alternata (PN1)","A. alternata (PN2)","A. gaisen (FERA 650)","A. tenuissima (FERA 1166)")) + theme(axis.text.x  = element_text(face="italic",angle=75,vjust=1,hjust=1),legend.position = "none") + labs(x=NULL,y=NULL)
dev.off()


rpct <- read.table("Repeat_percent_1.txt",header=T)
rpct1 <- rpct[which(rpct$Repeats!="Unknown" & rpct$Repeats!="Simple_repeat" & rpct$Repeats!="Low_complexity" & rpct$Repeats!="Satellite" & rpct$Repeats!="rRNA"),]
rpct1$Species <- factor(rpct1$Species, levels = c("Abr","Abrc","Asl","Alat","Aat_PN1","Aat_PN2"))
tiff(file = "bubble_chart_pct_1.tiff", width = 2*700, height = 2*1000, res = 300, pointsize = 8)
ggplot(rpct1,aes(x = Species, y = Repeats)) + geom_text(aes(label=round(Percent,digits=3)), size=2, nudge_x=0.0, nudge_y=0.0) + geom_point(aes(size = sqrt(Percent),colour = Repeats), alpha = 0.4) + scale_size(range = c(1,20)) + theme_bw() + scale_x_discrete(labels=c("A. brassicae (J3)","A. brassicicola (abra43)","A. solani (altNL03003)","A. alternata (ATCC 34957)","A. alternata (PN1)","A. alternata (PN2)","A. gaisen (FERA 650)","A. tenuissima (FERA 1166)")) + theme(axis.text.x  = element_text(face="italic",angle=75,vjust=1,hjust=1),legend.position = "none") + labs(x=NULL,y=NULL)
dev.off()

rpct
