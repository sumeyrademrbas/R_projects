

#-------------- Project 3 -----------------#


    #----------10\2\2024------------#

#Task: Is it not ethical to use the drug?

#Is whether the drug is synthetic or natural a factor in whether the drug is effective?

install.packages("readxl")

library(readxl)

data <- read_xlsx("C:\\Users\\psksu\\OneDrive\\Desktop\\datas.xlsx")

data <- read_excel("C:\\Users\\psksu\\OneDrive\\Desktop\\datas.xlsx", sheet = 2)

head(data)

t.test(data$FMPS_T0_MASC_VEST, data$FMPS_T1_MASC_VEST, var.equal=T)

#According to the results, there is a significant difference between the variables FMPS_T0_MASC_VEST and FMPS_T1_MASC_VEST. 
#The fact that the p-value is very small indicates that this difference is statistically significant.
#Moreover, according to the confidence interval, this difference is approximately between 5.55 and 6.35.

#Is whether the drug is synthetic or natural a factor in whether the drug is effective?

t.test(data$FMPS_T1_MASC_VEST ~ data$TIP_COLL, var.equal = TRUE) #Comparing effectiveness by type of drug

#These results show that there is no significant difference 
#in the FMPS_T1_MASC_VEST measurement between synthetic and natural drugs.



