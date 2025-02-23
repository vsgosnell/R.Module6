#ChatGPT to the rescue:

# Define the size of the matrix
n <- 5

# Create a diagonal matrix with 3s on the diagonal
mat <- diag(3, n, n)

# Set the first column values
mat[-1, 1] <- 2  # Set 2s in the first column from row 2 onward

# Set the first row values
mat[1, -1] <- 1  # Set 1s in the first row from column 2 onward

# Print the matrix
print(mat)


