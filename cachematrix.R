## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  
  
  setMatrix <- function(y)
  {
    x <<- y
    
    inverse <<- NULL
  }
  getMatrix <- function()
    x
  
  setInverse <- function(i)
  {
    inverse <<- i
  }
  getInverse <- function()
    inverse
  
  list(
    setMatrix = setMatrix,
    getMatrix = getMatrix,
    setInverse = setInverse,
    getInverse = getInverse
    
  )
}


## Write a short comment describing this function

cacheSolve <- function(xx, yy, ...) {
  ## Return a matrix that is the inverse of 'xx'
  ##yy is matrix
  ##xx is list from MakeCAcheMatrix function
  
  y <- xx$getInverse()
  
  
  print(yy)
  if (!is.null(y))
  {
    if (identical(yy, xx$getMatrix()))
    {
      message("getting cached data")
      return(y)
      identica
    }
  }
  data <- xx$getMatrix()
  inverse <- solve(data)
  xx$setInverse(inverse)
  inverse
  
}
