## below function creates 4 functions set,get,setinvers and get inverse for square matirx.
makeCacheMatrix <- function(x = matrix()) {
  a <- NULL
  set <- function(y) {
    x <<- y
    a <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) a <<- inverse
  getinverse <- function() a
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}

## This function calculates invers the function of the matrix created above. 
cacheSolve <- function(x, ...) {
  a <- x$getinverse()
  if(!is.null(a)) {
    message("getting cached data.")
    return(a)
  }
  data <- x$get()
  a <- solve(data)
  x$setinverse(a)
  a
}

