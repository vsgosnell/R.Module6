#classes
#One thing to notice is that the class is a vector which allows an object 
#to inherit from multiple classes, and it allows you to specify the order of inheritance for complex classes. 

happy <- c(1,0,2,0)
happy
class(happy)
#returns 'numeric'

#append() adds to the existing function
class(happy) <- append((happy), "monday")

class(happy)
#A new command, append, is used here. 
# The first argument is a vector, and the function adds 
# the following arguments to the end of the vector.  




#UseMethod() function
# The UseMethod command will tell R to look for a function 
# whose prefix matches the current function, and it searches 
# for a suffix in order from the vector of class names. 
# In other words a set of functions can be defined, 
# and the function that is actually called will be determined 
# by the class name of the first object in the list of arguments
# You first have to define a generic function to reserve the function name. 
# The UseMethod command is then used to tell the R system to search for a different 
# function. The search is based on the name of the function and the names of an object’s classes. 
# The name of the functions have two parts separated by a ”.” 
# where the prefix is the function name and the suffix is the name of a class.

happy <- list(first = "one", second = "two", third = "third”)

class(happy) <- append(class(happy), "monday")
#something wrong with this block of code

happy
$first
$second
$third
attr(,"class”)

GetFirst <- function(x)
     {
        UseMethod("GetFirst",x)
        }

GetFirst.monday <- function(x)
{
  return(x$first)
  }

GetFirst(happy)






