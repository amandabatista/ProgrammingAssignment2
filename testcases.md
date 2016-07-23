### Test cases

These are the examples used to test the functions.


<!-- -->

> myMatrix <- matrix( c(2, 2, 3, 5), nrow=2,ncol=2)
> myMatrix
     [,1] [,2]
[1,]    2    3
[2,]    2    5
> myCacheMatrix <- makeCacheMatrix(myMatrix)
> cacheSolve(myCacheMatrix)
      [,1]  [,2]
[1,]  1.25 -0.75
[2,] -0.50  0.50
> myMatrix <- matrix( c(2, 4, 1, 3), nrow=2,ncol=2)
> myCacheMatrix <- makeCacheMatrix(myMatrix)
> cacheSolve(myCacheMatrix)
     [,1] [,2]
[1,]  1.5 -0.5
[2,] -2.0  1.0
> myMatrix <- matrix( c(1, 2, 3, 0), nrow=2,ncol=2)
> myCacheMatrix <- makeCacheMatrix(myMatrix)
> cacheSolve(myCacheMatrix)
          [,1]       [,2]
[1,] 0.0000000  0.5000000
[2,] 0.3333333 -0.1666667
> myMatrix <- matrix( c(3, 9, 1, 0, 1, 0, 2, 7, 1), nrow=3,ncol=3)
> myCacheMatrix <- makeCacheMatrix(myMatrix)
> cacheSolve(myCacheMatrix)
     [,1] [,2] [,3]
[1,]    1    0   -2
[2,]   -2    1   -3
[3,]   -1    0    3

