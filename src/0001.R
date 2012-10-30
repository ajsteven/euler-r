problem1 <- function(max=1000, a=3, b=5)
{
  v1 <- 1:max
  temp <- ifelse(v1%%a==0 | v1%%b==0,v1,0)
  answer <- sum(temp)
  return(answer)
}                       