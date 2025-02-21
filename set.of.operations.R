#example of set operations -> union of sets, intersect, etc.

#create vectors to hold data
x = c(1,2,5)
y = c(5,1,8,9)

#find the union between the vectors
union(x,y)

#test for equality between x and x
setequal(x,c(1,2,5))
#returns true bc this is the same vector

#test for equality between x and y
setequal(x,y)
#returns false bc they are different numbers

#find the intersection of the sets x and y
intersect(x,y)		

#membership testing, whether 2 is and element of the set x
2 %in% x
#returns true

#test whether 7 is in y
7 %in% y
#returns false

#find the set difference between y and x
#consisting of all elements of y that are not in x
setdiff(y,x)

#find the difference between x and y
#all elements of x not in y
setdiff(x,y)
#returns 2

#number of possible subsets of the size k chosen from a set of size n
choose(5,2)
#can make 10 subsets of size 5 chosen from a set of size 2
