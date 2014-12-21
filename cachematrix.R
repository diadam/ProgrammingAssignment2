## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
        xInverse <- NULL
        set <- function(y) {
            x <<- y
            xInverse <<- NULL
        }
        get <- function() x
        setInverse <- function(matrixInverse) xInverse <<- matrixInverse
        getInverse <- function() xInverse
        list(matrice=list(set = set, get = get),
                   matriceInverse= list(setInverse = setInverse, getInverse = getInverse))
}


## Write a short comment describing this function
## This function computes the inverse of the special "matrix" returned by makeCacheMatrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <- x$matriceInverse$getInverse()
        
        if(!is.null(inverse)) {
            message("getting cached matrix inverse")
            return(inverse)
        }
        
        matrice <- x$matrice$get()
        inverse <- solve(matrice)
        x$matriceInverse$setInverse(inverse)
        inverse
}
