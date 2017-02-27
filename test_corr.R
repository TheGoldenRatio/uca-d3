#### Correlations between Entrance Exam and English, Science, Math

library(corrplot)
library(ggplot2)

#### MATH #####

#bt class
df <- read.table("Documents/entrance_corr.csv", header = TRUE, sep = ",")

corr_matrix <- cor(df)
corrplot.mixed(corr_matrix, lower="ellipse", upper = "number")

#declare variables
entr_math <- df[1]
entr_eng <- df[2]
entr_log <- df[3]
grade <- df[4]

#quickplots
quickplot(entr_math, grade) # math, grade
quickplot(entr_eng, grade) # english, grade
quickplot(entr_log, grade) #logic, grade

#bt minus outliers
df2 <- read.table("Documents/entrance_corr_out.csv", header = TRUE, sep = ",")
corr_matrix_out <- cor(df2)
corrplot.mixed(corr_matrix_out, lower="ellipse", upper = "number")

#kh class
df_kh <- read.table("Documents/khol_math_corr.csv", header = TRUE, sep = ",")
corr_matrix_kh <- cor(df_kh)
corrplot.mixed(corr_matrix_kh, lower="ellipse", upper = "number")

quickplot(df_kh[1], df_kh[4]) # math, grade
quickplot(df_kh[2], df_kh[4]) # english, grade
quickplot(df_kh[3], df_kh[4]) #logic, grade

#total math
df_math_total <- read.table("Documents/total_math.csv", header = TRUE, sep = ",")
total_math <- cor(df_math_total)
corrplot.mixed(total_math, lower="ellipse", upper = "number")

quickplot(df_math_total[1],binwidth = 3)
quickplot(df_math_total[2] ,binwidth = 3)
quickplot(df_math_total[3] ,binwidth = 3)
quickplot(df_math_total[4])

quickplot(df_math_total[1], df_math_total[4]) # math, grade
quickplot(df_math_total[2], df_math_total[4]) # english, grade
quickplot(df_math_total[3], df_math_total[4]) #logic, grade

#### SCIENCE #####
sci_df <- read.table("Documents/sci_corr.csv", header = TRUE, sep = ",")

sci_corr <- cor(sci_df)
corrplot.mixed(sci_corr, lower="ellipse", upper = "number")

quickplot(sci_df[1], sci_df[4]) # math, grade
quickplot(sci_df[2], sci_df[4]) # english, grade
quickplot(sci_df[3], sci_df[4]) #logic, grade



### English ####

eng_df <- read.table("Documents/engl_corr_s.csv", header = TRUE, sep = ",")

eng_corr <- cor(eng_df)
corrplot.mixed(eng_corr, lower="ellipse", upper = "number")

quickplot(eng_df[2],eng_df[4])

