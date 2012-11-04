problem7 <- function()
{
  howMany <- 10001;
  primes <- c(2);
  i <-1
  j <- 3;
  
  while( i <= howMany)
  {
    p <- which(j%%primes[primes<sqrt(j)] == 0);
    if(length(p)==0)
    {
       primes <- c(primes,j);
       i <- i+1;
    }
    j <- j+2;
  }
  
  return(primes[howMany]);
  
}
