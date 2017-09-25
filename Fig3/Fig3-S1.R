a = read.delim("fly-results.out")
a = unique(a)

a = na.omit(a)
a=a^2

a = as.data.frame(a)
a$"context"=a[,2]
a[,2]=NULL
colnames(a)[2]="All subsets"
head(a)

median(a[,1])
median(a[,4])
median(a[,ncol(a)])

wilcox.test(a[,1], a[,4], paired = T)

pdf("Fig3-S1.pdf")
par(mar=c(10, 6, 4, 4))
boxplot(a, col="red", main="Performance of Learning Procedures",
	xlab="", ylab=expression(paste("r"^"2", " to held-out data")), frame = F, cex.axis=1.2, cex.lab=1.5, cex.main=2, las=2, notch=T)
