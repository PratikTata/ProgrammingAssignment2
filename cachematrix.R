##these functions allow you to reference / store the value of a matrix's inverse

##returns a list of the 4 functions that will be used in cacheSolve. 
##stores in its environment the value of the matrix and its inverse.
##these values are edited by the 4 functions that it returns.

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

##the argument x is the list of 4 functions returned by makeCacheMatrix.
##if an inverse exists, return the inverse. if not, compute inverse and return it

cacheSolve <- function(x, ...) {
       
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
