## This function answers Assignment 2, it will set, get, and calcuate the inverse of a function
## 

## purpose of the function is to create a matrix that will hold a couple of variables

makeCacheMatrix <- function(x = matrix()) {
  m<- NULL

  set < - function(y){
    x<<-y
    m<<-NULL
    
  }
    
  setsolution <- function (inverse) m <<-inverse

  get <- function() x
  
  getsolution <- function () m
  
list(set = set, get = get, setsolution = setsolution, getsolution = getsolution)
  
}


## Solve the inverse of the matrix 

cacheSolve <- function(x, ...) {
   m<- x$getsolution()
  
    if(!is.null(m)){
     
     message("woo! dont have to do this again, retrieving cached data")
     return(m)
   }
   
   data <- x$get()
   m<-solve(data)
   x$setsolution(m) 
   m
        ## Return a matrix that is the inverse of 'x'
}
