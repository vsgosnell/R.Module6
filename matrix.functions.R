#transpositions invert row -> column, or column -> row

#can subtract by adding a negative matrix

#scalar * matrix = scalar multiplication

#can ONLY perform matrix multiplication if:
#the number of columns in A = the number of rows in B
# When A is a m x n matrix & B is a kxl matrix, 
# AB is only possible if n=k. 
# The result will be an mxl matrix

#matrix multiplication is NOT commutative -> the order matters!
#it is associative, and distributive



#identity matrices play similar role as 1 in multiplication
#can't divide matrices, so we need to use the inverse to solve problems
#the identity is important in these types of calculations


#diag() function:
# This function will return a vector if the argument is a matrix
# Vice versa, it will return a matrix if the argument is a vector
# It will also return the identity matrix of the specified size if the argument is a scalar.
# Example of diag() is on page 198 of our book.



#sweep() function:
m <- matrix(c(1,4,7,2,5,8,3,6,9), nrow = 3)
sweep(m,1,c(1,4,7), '+')




#linear combination and dimnesionality
# A matrix A (m*n) can itself be decomposed in as many vectors as its number 
# of columns (or lines). When decomposed, one can represent each column of the 
# matrix by a vector. The ensemble of n vector-column defines a vectorial space proper to matrix A.


#linear dependency and rank
# If one can find a linear relationship  between the lines or columns of a matrix, 
# then the rank of the matrix (number of dimensions of its vectorial space) 
# will not be equal to its number of column/lines 
# and the matrix will be said to be rank-deficient.

# The rank of a matrix corresponds to the dimensionality  of the vectorial space defined by this matrix.  
# It corresponds to the number of vectors defined by the matrix that are linearly independents from each other.
# Linearly independent vectors are vectors defining each one one more dimension in space, 
# compared to the space defined by the other vectors. They cannot be expressed by a linear combination of the others. 



#scalar product of vectors
# Calculate the scalar product of two vectors is equivalent to make the projection of one vector on the other one.  

#vector cross product function
# Cross product of (x₁,x2,x3) and (y1,y2,y3)
# (x1y3 - x3y2, - x1y3 + x3y1, x1y2 - x2y1)
# We will use this function created in R
xprod = function(x,y) {
  m = rbind(rep(NA,3),x,y)
xp = vector(length = 3)
for(i in 1:3)
  xp[i] = -(1)^i * det(m[2:3], -i)
return(xp)
}
#this function produces a bunch of errors

