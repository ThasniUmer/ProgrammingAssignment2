## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  j <- NULL
  set <- function(y) {
    x <<- y
    j <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) j <<- inverse
  getinverse <- function() j
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  j <- x$getinverse()
  if (!is.null(j)) {
    message(" cached data")
    return(j)
  }
  data <- x$get()
  j <- solve(data, ...)
  x$setinverse(j)
  j
}
