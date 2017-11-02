library(stringr)

cat('\'')
cat('ab\ncd')
cat("a\tb\tc")
cat(":-\\")
cat("^_^\"")
cat("@_'-'")
cat("\\m/")

#3
?str_locate
?str_sub

#4
str_locate(string = "great",pattern = "a")
list = c("great","fantastic","super")
occurance = str_locate_all(string = list, pattern = "a")

occurance[1]  
occurance[[1]][1]

#5
str_sub("testing",end = 3)
str_sub("testing",start = 4)
str_sub("testing",end = 4)

#6
input <- c("abc","defg")
str_sub(input,c(2,3))

#7














