problem4 <- function()
{
  a <- 100;
  b <- 999;
  product <- b*b;
  high <- b*b;
  low <- a*a;
  v <- high:low;
  s <- a:b;

  for(i in v)
  {
    if (isPalendrome(i))
    {
      prod <- i %% s;
      if(length(which(prod==0)))
      {
        return(i);
      }
    }
  }
  
  return(FALSE)
}

isPalendrome <- function(number)
{
  reverse <- as.numeric(sapply(lapply(strsplit(as.character(number), NULL), rev), paste, collapse=""));
  return(number==reverse)
}