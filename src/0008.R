problem8 <- function(string)
{
   str <- strsplit(string,'0+');
   num <- unlist(str);
   num3 <- num[which(nchar(num)>5)]
   
   length5 <- num[which(nchar(num)==5)];
   
   max <- max(sumDigits(length5));
   
   for (i in num3)
   {
   
   }
   
}

sumDigits <- function(number)
{
   vec <- sum(as.numeric(unlist(strsplit(number,NULL))));
   return(vec);
}