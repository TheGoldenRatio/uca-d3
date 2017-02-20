#### Correlations between Entrance Exam, Math Grade, Math Final Exam

library(corrplot)
library(ggplot2)

#### MATH #####

df <- read.table("Documents/entrance_corr.csv", header = TRUE, sep = ",")

corr_matrix <- cor(df)
corrplot.mixed(corr_matrix, lower="ellipse", upper = "number")

#declare variables
entr_math <- df[1]
entr_eng <- df[2]
entr_log <- df[3]
grade <- df[4]

#quickplots
quickplot(entr_math,binwidth = 3)
quickplot(entr_eng ,binwidth = 3)
quickplot(entr_log ,binwidth = 3)
quickplot(grade)

quickplot(entr_math, grade) # math, grade
quickplot(entr_eng, grade) # english, grade
quickplot(entr_log, grade) #logic, grade

df2 <- read.table("Documents/entrance_corr_out.csv", header = TRUE, sep = ",")
corr_matrix_out <- cor(df2)
corrplot.mixed(corr_matrix_out, lower="ellipse", upper = "number")

#### SCIENCE #####
sci_df <- read.table("Documents/sci_corr.csv", header = TRUE, sep = ",")

sci_corr <- cor(sci_df)
corrplot.mixed(sci_corr, lower="ellipse", upper = "number")

quickplot(sci_df[1], sci_df[4]) # math, grade
quickplot(sci_df[2], sci_df[4]) # english, grade
quickplot(sci_df[3], sci_df[4]) #logic, grade
