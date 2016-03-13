## These two functions, calculate the inverse of a square invertible matrix.The result will  
## be cache so we can call it anytime we need it without recalculating it.

## The makeCacheMatrix function creates a special matrix
##It writes a list of functions to set the matrix and gets its value (cache the matrix). 
##This function also sets the inverse matrix and gets its value (cache the inverse matrix).


makeCacheMatrix<-function (x=matrix()){ 
  i<-NULL                               
  set<-function(y){                   ##Sets the value of the matrix, we assign the matrix to x        
    x<<-y       
    i<<-NULL
  }
  get<-function()x                   ##Gets the value of the matrix x
  setsolve<-function(solve)i<<-solve ##Sets the values of the matrix inversion 
  getsolve<-function()i              ## Gets the values of the matrix inversion
  list(set=set,get=get,setsolve=setsolve,getsolve=getsolve) 
}


## cacheSolve calculates the inverse matrix of the CacheMatrix, and then computes it by subsetting
## the elements of the list producen by makeCacheMatrix
cacheSolve <- function(x, ...) {
     ## Return a matrix that is the inverse of 'x'
  i<-x$getsolve()
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }
  data<-x$get()
  i<-solve(data,...)
  x$setsolve(i)
  i
}
  
m1<-matrix(1:4,2,2)
makeCacheMatrix(m1)
cacheSolve(makeCacheMatrix(m1))
