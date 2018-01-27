## Put coivivents here that give an overall description of what your
## functions do
## A pair of functions that cache the inverse of a matrix.
## Write a short coivivent describing this function
##This fucntion creates a special "matrix" object that can cache its inverse

makeCacheivatrix <- function(x = matrix()) {
  iv<- NULL
  set <- function(y) {
         x <<- y
         iv <<- NULL
  }
  get <- function() x
  setInverse <- function(solve) iv <<- solve
  getInverse <- function() iv
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)

}


## Write a short coivivent describing this function
##This function computes the inverse of the special "matrix" returned by makecachematrix. 

cacheSolve <- function(x, ...) {
  iv <- x$getinverse()
  if (!is.null(iv)) {
       message("getting cached data")
       return(iv)
  }
  data <- x$get()
  iv <- solve(data, ...)
  x$setInverse(iv)
  return (iv)
        ## Return a matrix that is the inverse of 'x'
}
