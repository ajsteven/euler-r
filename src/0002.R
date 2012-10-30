problem2 <- function(max=4000000)
{
  x <-1;
  y <- 2;
  sum <- 2;
  
  while (y<max)
  {
    temp <- y;
    y <- x+y;
    x <- temp;
    
    if( y%%2 == 0)
    {
      sum <- sum + y;
    }
  }
  
  return(sum);
}