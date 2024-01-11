setwd("D:/METOPEL UAS/FADHIA METOPEL")
library(readxl)
library(tidyverse)
library(kableExtra)
read_excel("kopi1.xlsx")
dat <- read_excel("kopi1.xlsx")
kbl(dat) %>%
  kable_styling(bootstrap_options = c("striped", "hover", "condensed", "responsive"))


# Plot 
# regresi
reg1<-lm(indo~usa+jerman+itali+jepang+korsel,data=dat)
summary(reg1)

dat$m<-resid(reg1)
plot(dat$indo,dat$m,xlab="Ekspor Kopi Indonesia",ylab="error")
abline(h=0)

dat$m<-resid(reg1)
plot(dat$usa,dat$m,xlab="Impor Kopi Amerika",ylab="error")
abline(h=0)

dat$m<-resid(reg1)
plot(dat$jerman,dat$m,xlab="Impor Kopi Jerman",ylab="error")
abline(h=0)

dat$m<-resid(reg1)
plot(dat$itali,dat$m,xlab="Impor Kopi Italia",ylab="error")
abline(h=0)

dat$m<-resid(reg1)
plot(dat$jepang,dat$m,xlab="Impor Kopi Jepang",ylab="error")
abline(h=0)

dat$m<-resid(reg1)
plot(dat$korsel,dat$m,xlab="Impor Kopi Korea Selatan",ylab="error")
abline(h=0)
