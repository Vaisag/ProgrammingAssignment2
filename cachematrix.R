## Functions below will help us find out the inverse of a matrix
## Once we find the inverse, it will be stored in the cache and if the matrix is
## not changed the next time we call the function, it will retrieve the result from the cache


##makeCacheMatrix function will create a special vector which is a list containing function to
##1. Set a matrix
##2. Get the matrix
##3. Set the inverse of the matrix 
##4. Get the inverse of the matrix
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


## cacheSolve will take in two arguments, xx and yy
##xx is list from MakeCAcheMatrix function
##yy is a square matrix

cacheSolve <- function(xx, yy, ...) { 
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
