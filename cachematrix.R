## Put comments here that give an overall description of what your
## functions do
## these two functions cache the inverse of a matrix

## Write a short comment describing this function
# comment: this function creates a special matrix object that can cashe its inverse

makeCacheMatrix <- function(x = matrix()) {
        j <- NULL
        set1 <- function(y){
                x <<- y
                j <<- NULL
        }
        
        get1 <- function ()x
        setinv <- function(inverse) inv <<- inverse
        getinv <- function() inv
        list(set1 = set1, get1 = get1, setinv = setinv, getinv = getinv)

}


## Write a short comment describing this function
## this functino gives you the inverse of the sepcial matrix returened by makeCacheMatrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
        if(!is.null(inv)){
                message('getting cached data')
                return(inv)
        }
        data <- x$get()
        inv<- solve(data)
        x$setInverse(inv)
        inv
}
