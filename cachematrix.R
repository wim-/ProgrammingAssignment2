## overall description:
## R Programming - programming assignment 2 - result
## by: github.com/wim-
## below 2 functions that are used to
##    create a matrix and
##    cache it's inverse

## description makeCacheMatrix
##    this function creates a special matrix
##    which is list containg a function to
##    1. set the value of the matrix
##    2. get the value of the matrix
##    3. set the value of the inverse
##    4. get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
      i <- NULL
      set <- function(y) {
            x <<- y
            i <<- NULL
      }
      get <- function() x
      setinverse <- function(inverse) i <<- inverse
      getinverse <- function() i
      list(set = set, get = get,
           setinverse = setinverse,
           getinverse = getinverse)
}


## description cacheSolve
##    this function gets the inversed matrix from teh cache
##    if this doesn't exist, it will calculate it first

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

      i <- x$getinverse()
      if(!is.null(i)) {
            message("getting inversed data")
            return(i)
      }
      data <- x$get()
      i <- inverse(data, ...)
      x$setinverse(i)
      i
}