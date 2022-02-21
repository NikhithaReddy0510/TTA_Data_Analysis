
# Additional Learning Tasks

# 1.Write an R program to create three vectors a, b, c with 5 integers. Combine the three vectors to become a 3×5 matrix where each column represents a vector. Print the content of the matrix. Plot a graph and label correctly.

a<-c(1,2,3,4,5)
b<-c(4,5,6,7,8)
c<-c(7,8,9,10,11)
m<-cbind(a,b,c)
print("Content of the matrix:")
print(m)


#Combining the vector to become 3x5 matrix
x1 <- rbind(a,b,c)
#Printing the content of the Matrix
print(x1)
#plot(e, type ="o", col="blue", pch=16)
f <- matrix(1:15, byrow = TRUE, nrow = 3)
f
dim(f)
matplot(f, type ="o", pch=15, col=1:3)
matplot(x1, type ="o", pch=15, col=1:3)



# 2.Write a R program to create a Data frames which contain details of 5 employees and display the details.  (Name, Age, Role and Length of service). 

Emp_ID <-c(1,2,3,4,5)
Emp_Name <- c("Mani", "Shiva", "Paru", "Ram" ,"Lela")
Emp_Age <- c(45, 32, 30, 27 ,24)
Emp_Role <- c("Ceo", "Director", "Lead", "Senior","Admin")
Emp_Lserv <- c(15, 5, 4, 9 ,7)
frame <- data.frame(Emp_ID, Emp_Name, Emp_Name, Emp_Role, Emp_Lserv)  
print(frame)



# 3.Import the GGPLOT 2 library and plot a graph using the qplotfunction. X axis is the sequence of 1:20 and the y axis is the x ^ 2.  Label the graph appropriately. install.packages("ggplot2", dependencies = TRUE)

install.packages("ggplot2")
library(ggplot2)
data <- seq(1:20)

# to find a toy data set
data(package = "ggplot2")

#Scatter plot with qplot
ggplot2::mpg

qplot(data = mpg, x = cty, y = hwy, geom = "point", color = class)

# bar plot and stacked bar plot
ggplot2::diamonds

?diamonds
diamonds

qplot(data = diamonds, y = clarity, geom = "bar", fill = cut)



# 4.Create a simple bar plot of five subjects

marks = c(70, 95, 80, 74)
barplot(marks,
        main = "Comparing marks of 5 subjects",
        xlab = "Marks",
        ylab = "Subject",
        names.arg = c("English", "Science", "Maths", "History"),
        col = "Green",
        horiz = FALSE)


# 5.Write a R program to take input from the user (name and age) and display the values.

name = readline(prompt="Input your name: ")
age =  readline(prompt="Input your age: ")
print(paste("My name is",name, "and I am",age ,"years old."))




# 6.Write a R program to create a sequence of numbers from 20 to 50 and find the mean of numbers from 20 to 50 and sum of numbers.

print("Sequence of numbers from 20 to 50:")
print(seq(20,50))
print("Mean of numbers from 20 to 50:")
print(mean(20:50))
print("Sum of numbers from 20 to 50:")
print(sum(20:50))



# 7.Write a R program to create a vector which contains 10 random integer values between -50 and +50

v = sample(-50:50, 10, replace=TRUE)
print("Content of the vector:")
print("10 random integer values between -50 and +50:")
print(v)


## Optional Challenge

# 1.Write a R program to get the first 10 Fibonacci numbers.

Fibonacci <- numeric(10)
Fibonacci[1] <- Fibonacci[2] <- 1
for (i in 3:10) Fibonacci[i] <- Fibonacci[i - 2] + Fibonacci[i - 1]
print("First 10 Fibonacci numbers:")
print(Fibonacci)



# 2.Write a R program to print the numbers from 1 to 100 and print "Fizz" for multiples of 3, print "Buzz" for multiples of 5, and print "FizzBuzz" for multiples of both.

for (n in 1:100) {
  if (n %% 3 == 0 & n %% 5 == 0) {print("FizzBuzz")}
  else if (n %% 3 == 0) {print("Fizz")}
  else if (n %% 5 == 0) {print("Buzz")}
  else print(n)
}
