# Nama  : Muhammad Amin
# NRP   : 5025201251  
# Kelas : Probstat F

#Nomor 1
x = c(78, 75, 67, 77, 70, 72, 28, 74, 77)
y = c(100, 95, 70, 90, 90, 90, 89, 90, 100)

#Nomor 1.A
#Standar Deviasi x & y
sd_x = sd(x)
sd_x

sd_y = sd(y)
sd_y

#Standar Deviasi Selisih
sd(x - y)

#Nomor 1.B
t.test(x, y, alternative = "greater", var.equal = FALSE)

#Nomor 1.C
a = 0.05
t.test(x, y, alternative = "two.sided", paired = TRUE, conf.level = 1 - a)

var.test(x,y)

#Nomor 2

#error tadi harus install dua ini dulu
install.packages("proxy")
install.packages("e1071")

install.packages("BSDA")
library(BSDA)

#Nomor 2.A
#Tidak Setuju, 20.000 per tahun = 66.666 km per hari,
#menurut saya, klaimnya terlalu banyak

#Nomor 2.B
tsum.test(mean.x = 23500, s.x = 3900, n.x = 100)

#Nomor 2.C
#Karena p-value mendekati 0, maka klaim diatas benar

#Nomor 3

#Nomor 3.B
# x : Bandung
# y : Bali
x_n = 19
x_mean = 3.64
x_sd = 1.67
y_n = 27
y_mean = 2.79
y_sd = 1.32
tsum.test(n.x = x_n, mean.x = x_mean, s.x = x_sd, n.y = y_n, mean.y = y_mean, s.y = y_sd, alternative = "greater", var.equal = TRUE)

#Nomor 3.C
install.packages("mosaic")
library(mosaic)

plotDist(dist = 't', df = 2)

#Nomor 3.D

qchisq(p = 0.05, df = 2, lower.tail = FALSE)

#Nomor 4

URL = "https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"

#Nomor 4.A

File  <- read.table(url(URL)) 
dim(File)
head(File)

File$Group <- as.factor(File$Group)
File$Group = factor(File$Group,labels = c("Kucing Oren","Kucing Hitam","Kucing Putih"))

class(File$Group)

group1 <- subset(File, Group=="Kucing Oren")
group2 <- subset(File, Group=="Kucing Hitam")
group3 <- subset(File, Group=="Kucing Putih")

#Nomor 4.B

bartlett.test(Length~Group, data=dataoneway)

qqnorm(group1$Length)
qqline(group1$Length)

#Nomor 4.C

qqnorm(group1$Length)
qqline(group1$Length)

#Nomor 4.E

model1 <- lm(Length~Group, data=myFile)
anova(model1)
TukeyHSD(aov(model1))


