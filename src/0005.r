problem5 <- function(number)
{
  primes <- getPrimes(number);
  lowest <- 1;
  i<-2;
  while(i<=number)
  {
    temp<-lowest%%i;
    if(temp!=0)
    {
      if(length(which(primes==i))==0)
      {
        lowest<-lowest*i/temp;
      }else
      {
        lowest<-lowest*i;
      }
    }
    i<-i+1;
  }
  
  return(lowest)

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