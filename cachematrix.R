## The two functions basically calculate the inverse of a matrix a store its result.

## This function takes a matrix, calculates the inverse and stores it in a cache.

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
get <- function() x
setinverse <- function(inverse) i <<- inverse
getinverse <- function() i
list(set = set,
     get = get,
     setinverse = setinverse,
     getinverse = getinverse)
}


## Using the the cached data this function uses the cache results and prints them out if the matrix is unchanged.

cacheSolve <- function(x, ...) {
        i <- x$getinverse()
if(!is.null(i)) {
        message("getting cached data")
        return(i)
}
data <- x$get()
i <- solve(data, ...)
x$setinverse(i)
i
}
