##1

# Set working directory (update path as needed)
setwd("C:\\Users\\DELL\\OneDrive - Sri Lanka Institute of Information Technology\\Desktop\\IT24102410 Lab4")

getwd()
# Import data
branch_data <- read.csv("Exercise.txt", header = TRUE, sep = ",")

# View first rows
head(branch_data)


##2

#Brangh
#sales_X1
#Advertising_X2
#Years_X3


##3
boxplot(branch_data$Sales_X1, main = "Boxplot of Sales",ylab = "Sales(X1)",  col = "lightblue")


##4

##five number summary
summary(branch_data$Advertising_X2)


##IQR
IQR(branch_data$Advertising_X2)

##5



# Define outlier function
get.outliers <- function(x) {
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR_value <- Q3 - Q1
  lb <- Q1 - 1.5 * IQR_value
  ub <- Q3 + 1.5 * IQR_value
  outliers <- x[x < lb | x > ub]
  return(outliers)
}
get.outliers(branch_data$Years_X3)

