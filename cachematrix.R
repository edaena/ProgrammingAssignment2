## Put comments here that give an overall description of what your
## functions do

## This function sets a list of functions to set and get a matrix
## and to set the inverse and get the inverse of that matrix

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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
            if(!is.null(i)) {
                    message("getting cached data")
                    return(i)
            }
            data <- x$get()
            i <- solve(data)
            x$setinverse(i)
            i
}
