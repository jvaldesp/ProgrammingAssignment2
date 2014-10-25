## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL #Sets the value of the inverse matrix to NULL
  y <- NULL #Sets the value of the matrix to NULL
  setmatrix <- function(y) {
    x <<- y #Assigns the value of the matrix x
    inv <<- NULL #Sets the value of the inverse to NULL in makeCacheMatrix
  }
  getmatrix <- function() x #Gets the value of the matrix x
  setinverse <- function(solve) inv <<- solve #Sets the value of the 
                                              #inverse matrix to solve inv
  getinverse <- function() inv #Gets the value of the 
                               #inverse matrix to inv if already stored
  list(setmatrix = setmatrix, getmatrix = getmatrix,
       setinverse = setinverse,
       getinverse = getinverse) #List to store variables
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inv <- x$getinverse() #Gets the value of inv from makeCacheMatrix
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv) 
  } # If the inverse matrix is already stored, this function prints it
  inverse <- x$getmatrix() #The matrix is obtained to 
			   #calculate the inverse matrix
  inv <- solve(inverse, ...) #the inverse matrix is obtained
  x$setinverse(inv) #The inverse matrix is stored in setinverse
  inv  ## Return a matrix that is the inverse of 'x'
}
