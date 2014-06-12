## Calculating and re-calculating the inverse of a matrix can be an expensive
## operation. This codes creates a matrix-like object that allows you to
## compute the inverse once, store it, and retrieve it when needed.

## makeCacheMatrix creates a matrix-like object that is actually a list.
##
## The function takes one input:
## x An invertible matrix.
##
## The list it returns contains four functions:
## set(m) Stores the matrix and resets the inverese to NULL.
## get() Returns the actual
## setinv(inv) Computes and inverse and caches it.
## getinv() Return the cached inverse.
##
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  
  # Function to set matrix. Resetsinverse to NULL
  set <- function(a) {
    x <<- a
    inv <<- NULL
  }
  
  # Function to return main matrix.
  get <- function() x
  
  # Function to set  inverse of matrix.
  setinv <- function(inverse) inv <<- inverse
  
  # Function to return inverse of function.
  # Note: this does *not* compute the inverse.
  getinv <- function() inv
  
  # Return list of functions.
  list(set=set,
       get=get,
       setinv=setinv,
       getinv=getinv)
}


## This function finds the inverse of a matrix-like object created using
## makeCacheMatrix. If the inverse has already been found, the cached version
## of the inverse is return. Otherwise this function will calculate the inverse
## of the matrix and cache it.
##
## Input:
## x A matrix-like object created with makeCacheMatrix
##
## The function returns the inverse of the matrix-like object.
##
cacheSolve <- function(x, ...) {
  # Grab current version of inverse.
  inv <- x$getinv()
  
  ## If inverse already computed, return cached version.
  if(!is.null(inv)) {
    message('getting cached inverse')
    return(inv)
  }
  
  # Compute and cache inverse
  actual.matrix <- x$get()
  inv <- solve(actual.matrix)
  x$setinv(inv)
  
  # Return inverse matrix
  inv
}
