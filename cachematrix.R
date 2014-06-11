## makeCacheMatrix creates a matrix-like object that allows you to
## compute the inverse once, store it, and retrieve it when needed.
##
## The function takes one input:
## x: an invertible matrix.
##
## The list it returns contains four functions:
## set(m) Stores the matrix and resets the inverese to NULL.
## get() Returns the actual
## setinv(inv) Computes and inverse and caches it.
## getinv() Return the cached inverse.

makeCacheMatrix <- function(x = matrix()) {
    
    inv <- NULL
    # Function to set the matrix. Resets the inverse to NULL
    
    set <- function(a) {
        x <<- a
        inv <<- NULL
    }
    # Function to return the main matrix.
    
    get <- function() x
    
    # Function to set the inverse of the matrix.
    
    setinv <- function(inverse) inv <<- inverse
    
    # Function to return the inverse of the function.
    # Note: this does *not* compute the inverse.
    
    getinv <- function() inv
    
    # Return list of functions.
    
    list(set=set,
         get=get,
         setinv=setinv,
         getinv=getinv)
}
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

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
