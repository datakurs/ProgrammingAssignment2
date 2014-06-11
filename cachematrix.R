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

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
