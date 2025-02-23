# 1. Consider A=matrix(c(2,0,1,3), ncol=2) and B=matrix(c(5,2,4,-1), ncol=2).
# a) Find A + B
# b) Find A - B
# 
# 2. Using the diag() function to build a matrix of size 4 with the following values in the diagonal 4,1,2,3.
# 
# 3. Generate the following matrix:
#   
#   ## [,1] [,2] [,3] [,4] [,5]
#   ## [1,] 3 1 1 1 1
#   ## [2,] 2 3 0 0 0
#   ## [3,] 2 0 3 0 0
#   ## [4,] 2 0 0 3 0
#   ## [5,] 2 0 0 0 3
#   Hint: You can use the command diag() to build it.


#set up the matrices for question 1
A=matrix(c(2,0,1,3), ncol=2)
B=matrix(c(5,2,4,-1), ncol=2)

#add the matrices
A + B

#subtract the matrices
A - B


#establish the arguments that the function diag() takes
formals(diag)
#returns a list of names and default values of all arguments of the function

#from google search:
# Syntax: diag(x, nrow, ncol)
# x: value present as the diagonal elements.
# nrow, ncol: number of rows and columns in which elements are represented.

diag(c(4,1,2,3), ncol = 4)
#I did it!! :)





#from google search
my_matrix <- diag(5, nrow = 5) 
print(my_matrix) 
#this produces normal diag() with only 5's -> aka not helpful


#another google search
diag(matrix(1:12,3,4))
diag(matrix(1:12,3,4))
#these produce n x 1 matrix aka vectors

diag(c(1,5,9), 1)
diag(c(1,5,9), 1)
#these both also produce n x 1 matrices aka vectors
#but only containing the number 1
#     [,1]
# [1,]    1



#third time is the charm for google searches
mm <- matrix(rep(0, 9), nrow = 3)
mm
#>      [,1] [,2] [,3]
#> [1,]    0    0    0
#> [2,]    0    0    0
#> [3,]    0    0    0
# repeats 0 nine times in 3 rows

mm[upper.tri(mm)] <- 1
mm[lower.tri(mm)] <- 2
mm
#>      [,1] [,2] [,3]
#> [1,]    0    1    1
#> [2,]    2    0    1
#> [3,]    2    2    0
# changes the upper to 1's and the lower to 2's

#using this new information...
v <- matrix(rep(0,25), nrow = 5, ncol = 5)
v
# [,1] [,2] [,3] [,4] [,5]
# [1,]    0    0    0    0    0
# [2,]    0    0    0    0    0
# [3,]    0    0    0    0    0
# [4,]    0    0    0    0    0
# [5,]    0    0    0    0    0

v[upper.tri(v)] <- 1
v[lower.tri(v)] <- 2
v

# [,1] [,2] [,3] [,4] [,5]
# [1,]    0    1    1    1    1
# [2,]    2    0    1    1    1
# [3,]    2    2    0    1    1
# [4,]    2    2    2    0    1
# [5,]    2    2    2    2    0
#close, but not quite



#next google search:
# create 2*2 matrix. 
matrix_data=matrix(1:4,nrow=2,ncol=2) 

# display actual matrix 
print(matrix_data) 

# assign value to 1 
diag(matrix_data)=1 

# display final 
matrix_data

#using this logic:
s <- matrix(1:25, nrow = 5, ncol = 5)
print(s)

diag(s) = 3
s
# [,1] [,2] [,3] [,4] [,5]
# [1,]    3    6   11   16   21
# [2,]    2    3   12   17   22
# [3,]    3    8    3   18   23
# [4,]    4    9   14    3   24
# [5,]    5   10   15   20    3
#close, but no cigar




#~3 more google searches later:
#creating a matrix
m1=matrix(c(1:9),ncol=3)
print(m1)                              
# [,1] [,2] [,3]
# [1,]    1    4    7
# [2,]    2    5    8
# [3,]    3    6    9

a=c(5,10,15)
print("After replacing the diagonal ofthe matrix is")
diag(m1)=a
print(m1)                             
# [,1] [,2] [,3]
# [1,]    5    4    7
# [2,]    2   10    8
# [3,]    3    6   15

a6 <- matrix(c(1,2), nrow = 5, ncol = 5)
# error:
# In matrix(c(1, 2), nrow = 5, ncol = 5) :
# data length [2] is not a sub-multiple or multiple of the number of rows [5]



