#multiply a vector by a single scalar 

#create a vector with the data
A <- c(1,2,3,4)

#create a matrix from the vector
A <- matrix(A)

#create a vector to be the scalar
B <- c(7,10)

#multiply the matrix x scalar and save result in x
x <- A %*% B

#print the result 
x




#scalar = quantity described by a single real number

#vector = not physics, column of numbers -> nx1 matrix

#matrix = Rectangular display of vectors in rows and columns
#Can inform about the same vector intensity at different times 
#or different voxels at the same time
#in multiplication of matrices, you multiply each row by each column






#solve systems of linear equations finding matrix inverse
# If we have this system
# x₁ + x₂  = 2
# -x₁ + x₂ = 4
#the code looks like:

#creates the matrices
a = matrix(c(1,-1,1,1), nrow = 2)
b = c(2,4) 

#solve the matrices
solve(a,b)

#solve the matrix inverse
solve(a)


