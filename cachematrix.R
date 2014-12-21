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
        data.frame(matrice=list(set = set, get = get),
                   matriceInverse= list(setInverse = setInverse, getInverse = getInverse))
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
}
