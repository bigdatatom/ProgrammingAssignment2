## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# This function receive a matrix as an argument
# Assume matrix is always invertible
# There are 4 other functions set and get 

makeCacheMatrix <- function(x = matrix()) {
   n <- NULL
   set <- function(y) {
      x <<- y      
      n <<- NULL
   }
   
   get <- function() {x}
   setinv <- function(solve) {n <<- solve}
   getinv <- function() {n}
   list(set = set, get = get, 
        setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function
# Checks if inverse matrix existed in cache
# If it is yes, it will return the inverse matrix  
# Otherwise it will perform the inversion

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
   n <- x$getinv()
   if(!is.null(n)) {
      message("getting cached inverse matrix")
      return(n)
   }
   data <- x$get()
   n <- solve(data, ...)
   x$setinv(n)
   n   
}
