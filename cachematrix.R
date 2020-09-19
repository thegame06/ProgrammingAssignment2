## Put comments here that give an overall description of what your
## functions do
### Matrix inversion is usually a costly computation and there may be some benefit to caching the inverse of a matrix
### In this case was developed two function for turning this required.
## Write a short comment describing this function
#####
#####This function creates a special "matrix" object that can cache its inverse.
#####
makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() { x }
  setminverse <- function(minverse) { i <<- minverse }
  getminverse <- function() { i }
  list(set = set, get = get,
       setminverse = setminverse,
       getminverse = getminverse)
}


## Write a short comment describing this function
####
###This function computes the inverse of the special "matrix" returned by makeCacheMatrix above
###
cacheSolve <- function(x) {
  i <- x$getminverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data)
  x$setminverse(i)
  i
  ## Return a matrix that is the inverse of 'x'
}

