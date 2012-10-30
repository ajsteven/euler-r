problem6 <- function(number=100)
{
  sos<-1:number;
  sqos <- sum(sos)^2;
  sos <-sum(sos^2);
  
  return(sqos-sos)
}