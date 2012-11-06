problem12 <- function()
{
  maxNumDivisors <- 500;
  triangleNumber <- 1;
  numDivisors <-1;
  n<-1;
  
  while(numDivisors<maxNumDivisors)
  {
  
    triangleNumber <- Reduce('+',1:n);
    numDivisors <- length(which(triangleNumber%%(1:triangleNumber)==0));
    n <-n+1;

  }
  
  return(triangleNumber)
}