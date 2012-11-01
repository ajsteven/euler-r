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
      if(isPalendrome(i))
      {
        prod <- i %% s;
        factors <- s[which(prod==0)];
        if(length(factors)!=0)
        {
          fac2 <- i / factors;
          if(length(which(fac2>=100 &fac2<=999))>0)
          {
            return(i)
          }
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