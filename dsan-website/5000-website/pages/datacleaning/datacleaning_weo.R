
library(tidyverse)

weo <- read.csv('C:\\Users\\erinb\\OneDrive\\Documents\\Georgetown\\DSAN 5000\\dsan-5000-project-ebevec\\data\\00-raw-data\\WEOApr2023all.csv', na.strings = c('n/a'))
head(weo)

colMeans(is.na(weo))

weo <- weo[,(colMeans(is.na(weo))) < 0.33]
head(weo)

print(colnames(weo))

weo <- select(weo, -c('WEO.Country.Code', 'Subject.Notes', "Country.Series.specific.Notes", 'X2024', 'X2025', 'X2026', 'X2027', 'X2028'))
head(weo)

str(weo)

weo <- weo %>% mutate_at(vars(X1990, X1990, X1992, X1993, X1994, X1995, X1996, X1997, X1998, X1999, X2000, X2001, X2002, X2003, X2004, X2005, X2006, X2007, X2008, X2009, X2010, X2011, X2012, X2013, X2014, X2015, X2016, X2017, X2018, X2019, X2021, X2022, X2023), as.numeric)

str(weo)

write.csv(weo, 'C:\\Users\\erinb\\OneDrive\\Documents\\Georgetown\\DSAN 5000\\dsan-5000-project-ebevec\\dsan-website\\5000-website\\pages\\datacleaning\\data_weo_clean.csv')