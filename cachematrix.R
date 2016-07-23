## These two functions (makeCacheMatrix and cacheSolve) goal is to cache the inverse of a matrix taking advantage of
## lexical scoping

## Creates an R special object that stores a matrix and its inverse
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  
  set <- function(y) {
    ## x and inv were instanciated on parent environment (makeCacheMatrix scope). So we can use the <<- operator to set (or reset)
    ## these objects values on the parent environment.
    x <<- y 
    inv <<- NULL
  }
  
  ## get is a nested function. So we can get x value from parent environment (lexical scoping)
  get <- function() x 
  
  setInverse <- function(inverse) inv <<- inverse
  
  getInverse <- function() inv
  
  ## returns a list with the functions to manipulate the matrix and its inverse
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## This function returns the inverse of the special "matrix" returned by makeCacheMatrix above
cacheSolve <- function(x, ...) {
  
  ## If the inverse has already been calculated (and the matrix has not changed), then retrieves the inverse from the cache.
  x_inverse <- x$getInverse()
  if(!is.null(x_inverse)) {
    message("getting cached data")
    return(x_inverse)
  }
  
  ## If the inverse does not exists on cache, then calculates the inverse matrix of x, stores and returns it.
  data <- x$get()
  x_inverse <- solve(data)
  x$setInverse(x_inverse)
  x_inverse
}
