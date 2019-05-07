## Here I have written a pair of functions that cache the inverse of a given matrix rather than compute it repeatedly
## If the inverse has already been calculated and the matrix has not changed, then the cachesolve should retrieve the inverse from the cache

## The function below makes a matrix and caches the inverse matrix of it

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

##The function below computes the inverse of the special “matrix” returned by akecachematrix function above
##It should be able retrieve the inverse from the cache

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
