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
emails <- readRDS("email.rds")
emails
emails[1]
cat(emails[1])

a = str_locate(string = emails[1],pattern = "\n\n")

#8.
metadata1 = str_sub(string = emails[1],end = a[1] )
body1 = str_sub(string = emails[1],start = a[2] )

cat(metadata1)
cat(body1)

#9
str_split(metadata1,"\n")

#10
breaks = str_locate(emails,pattern = "\n\n")
metadata = str_sub(emails,end = breaks[,1]) # nothing before the , it will be whatever number email it is
body = str_sub(emails,start = breaks[,2])

### handout 2

#1
fruit <- c("apple","banana","pear","pineapple")

#2
str_detect(fruit,"a")
str_detect(fruit,"^a") # ^: starts with
str_detect(fruit,"a$") # $: ends with
str_detect(fruit, "[aeiou]") # []:contains any of the values inside
str_detect(fruit, "[a-d]") # any character in between a to d

#3 detect: starts with "a", ends with "e"
str_detect(fruit,"^a[a-z]*e$")

#4
phone = c("213 740 4826","213-740-4826")
parser = "[0-9]{3}[ -][0-9]{3}[ -][0-9]{4}"
str_detect(phone,parser)

#5
cat(body[10])
cat(body[18])
str_extract(body,parser)

#6
zipcodes = c("90028","90028-080967")
parserzip = "[0-9]{5}(-[0-9]{4})?\\b" #\\b means end of pattern, anything going beyond doesn't count
str_detect(zipcodes,parserzip)









