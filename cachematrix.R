## Below are the functions for week 3 Assignment2

## The purpose of this function below is to create a special "matrix" object that can cache its inverse

## Function calls makeCachematrix and with argument x is equalt to matrix
makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  get <- function() x
  setInverse <- function() inverse <<- solve(x) ## calculate the inverse
  getInverse <- function() inverse
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

## Computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), 
## then the cachesolve should retrieve the inverse from the cache

## Function calls cacheSolve and with argument x is equalt to matrix
cacheSolve <- function(x=matrix(), ...) {
    inverse<-x$getmatrix()
    if(!is.null(inverse)){
      message("getting cached data")
      return(inverse)
    }
    matrix<-x$get()
    m<-solve(matrix, ...)
    x$setmatrix(inverse)
    inverse
}
