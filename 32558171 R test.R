###############################################################
##
## MEDI6227 CLASS TEST
## 
## Each question is worth 1/2 mark, for a total of 10 marks
##
###############################################################

### Student ID: 32558171

Insert your student id above and return your completed R script 
with answers to mjrz@soton.ac.uk once you have finished by 5 pm.

###############################################################
## Vectors
###############################################################


## Q1 create a numeric vector, v, with the elements 3,4,6,7,9.
v <- c(3,4,6,7,9)


## Q2 print the elements of v that are greater than 4
print(v[v>4])

## Q3 sort the vector from low to high
sort(v)



###############################################################
## Basic statistical functions
###############################################################

## Q4 create a vector, x, of values from 1:674
x <- c(1:674)


## Q5 print the mean of x
mean(x)


## Q6 Calculate the product of the min and max of x
min(x) * max(x)


############################################################### 
## Matrices 
###############################################################

## Q7 create a matrix, m, with 4 rows x 3 columns with the values 1:12
m <- matrix(1:12, nrow = 4, ncol = 3)


## Q8 transpose m (to a matrix of dimensions 3 x 4)
transposed_m <- t(m)

###############################################################
## Data in/out and data frames 
###############################################################

## Load the DNase data 'DNase' from base R using data(DNase)


## Read the description for the DNase dataset 'help(DNase)'


## Q9 write the DNase data to a comma-separated file
write.csv(DNase, file = "DNase_data.csv", row.names = FALSE)

## Q10 read the file you just created into a data.frame.
DNase_data <- read.csv("DNase_data.csv")


## Q11 print the sum of the second column of the DNase data
sum_second_column_DNA_data <- sum(DNase_data[,2])
print(sum_second_column_DNA_data)

## Q12 print the 1st column of DNase, what type of variable is it?
class_first_colulmn <- print(DNase_data[,1])
class(class_first_colulmn)


## Q13 print the density value of the 7th row
print(DNase_data[7,3])


## Q14 print the top 3 rows of DNase
head(DNase, head = 3)


## Q15 print those entries where concentration > 0.1 AND density >0.10
filtered_data <- DNase_data[DNase_data$conc > 0.1 & DNase_data$density > 0.10, ]
print(filtered_data)


###############################################################
## Plots and graphs 
###############################################################

## Q16 plot the concentrations vs density of the DNase data and add a chart title
plot(x = DNase_data$conc, y = DNase_data$density,
     xlab = "Concentration",
     ylab = "density",
     main = "A graph of Concentration vs Density of the DNase data")


## Q17 Create histogram of density values from DNase
hist(DNase_data$density,
     xlab = "density",
     main = "Histogram of Density Values")

## Q18 Create a horizontal boxplot for density values from Run 2 from DNase and print the value of the thick black line on the box.
run2 <- DNase_data$density[DNase_data$Run == 2]
boxplot(run2,
        xlab = "Boxplot of density values from Run2",
        horizontal = TRUE)
#thick black line= median therefore
median(run2)


## Q19 Print the value of the thick black line on the box.
print(median(run2))



###############################################################
## Statistical testing
###############################################################

### Q20 Use a linear model to investigate the effect of run on DNase concentration. Print the summary of the model.
# Fit a linear model to investigate the effect of run on DNase concentration
linear_model <-lm(conc ~ Run, data = DNase_data)

print(linear_model)









