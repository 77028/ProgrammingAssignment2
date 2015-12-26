## The following code finds the inverse of a matrix and caches it for future use.

## The following code caches the inverse of a matrix for potential
## future use.
makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL  
    set <- function(y){
        x <<- y
        inv <<- NULL
    }
  get <- function()x
  setinverse <- function(MatrixInverse) inv <<- MatrixInverse
  getinverse <- function() inv
  
  # Creates a list with the object defined above
  list(set = set, 
       get = get, 
       setinverse = setinverse, 
       getinverse = getinverse)
}


## The code below checks if the inverse of the matrix is already cached
## and if not, calculates the inverse of the matrix and caches it for 
##future use.
cacheSolve <- function(x = matrix(), ...) {
  inv <- x$getinverse()
  if(!is.null(inv)){
        message("getting cached data")
        return(inv)
      }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv)
  inv
}

