problem3 <- function(number=13195)
{
  largestFactor <- floor(sqrt(number));
  
  primes <- getPrimes(largestFactor)
  
  primes <- rev(primes);
  
  for(i in primes)
  {
    if(number%%i==0)
    {
      return(i);
    }
  }
  return(2);
}

getPrimes <- function(prime)
{
  v <- seq(3,prime,by=2);
  sqr <- ceil(sqrt(prime))
  primes <- 2;
  
  for(i in 1:sqr)
  {
    primes <- c(primes,v[1]);
    v <- v[which(v%%v[1]!=0)];
  }
  primes <- c(primes,v);
  
  return(primes);
}