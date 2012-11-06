problem10 <- function()
{
    primes <- getPrimes(2000000);
    return(Reduce('+',primes));
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