## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(inputMatrix = matrix()) {
  inverted <- NULL
  setMatrix <- function(innerinput){
    x <<- y
    inverted <<- NULL
  }
  get <- function(){inputMatrix}
  assignInverse <- function(inverse){inverted <<- inverse}
  makeInverse <- function(){inv}
  list(setMatrix = setMatrix,  get = get, assignInverse = assignInverse, makeInverse = makeInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
  inv
}
