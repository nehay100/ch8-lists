### Loops, if/else

## 1. Create a sequence of numbers from 40 to 50.  Store this into a vector.
## Write a loop that prints the numbers in a nice way, for instance like
##  "element 1 = 40".
vec1 <- seq(40, 50)
for (i in 1: length(vec1)) {
  cat("element ", i, " = ", vec1[i], "\n")
}

## 2. Create another sequence of numbers and store in a vector.
## Write a loop that prints the numbers and their squares in a nice way.
vec2 <- c(seq(1,20 , length=5))
for (i in 1: length(vec2)){
  cat("element ", i, " = ", vec2[i], ", squares = ", vec2[i] * vec2[i], "\n")
}


## 3. Store the file names in the current working directory into a vector.
## You can get the names by 'list.file()` command (see help for additional information).
## Use loop to create a vector of file name lengths.
## After you have created the vector print the results in the following way:
##
## file1  length1
## file2  length2
## ...
##
## Lenght of file name
## (number of characters in a string) can be computed using 'nchar()' function.
## You can assign values to a vector using a construct like:
## x[3] <- 7
## Note: you have to create a vector before you can start assigning values to it.
##
fileNames <- list.files(R.home())
for (i in 1: length(fileNames)) {
  cat("file", i, " ", nchar(fileNames[i]), " \n")
}

## 4. Create a sequence of numbers from 1 to 1000.
## use a loop to print only these numbers that are multiplies of 99.
## Hint: you may want to test if remainder is 0
## Hint: '%%' is the remainder operator
vec4 <- seq(1, 1000)
for (i in 1: length(vec4)) {
  if (vec4[i] %% 99 == 0) {
    cat(vec4[i], "\n")
  }
}

## 5. Create a vector of 3 words.  Split the words in this vector into individual characters.
## Hint: use 'strsplit()' function.
## Store the resulting data structure.
## Loop over all the individual letters, and for each letter print the
## letter name, and if it is a vowel (= a,e,i,o,u) or a consonant (= the rest of the letters)
## For instance, word 'and' will be:
## a vowel
## n consonant
## d consonant

vec5 <- c("hello", "world", "neha")
vec6 <- strsplit(vec5, "") 
for (i in 1: length(vec6)) {
  for (j in 1: length(vec6[[i]])){
    letter <- vec6[[i]][j]
    if (letter == "a" | letter == "e" | letter == "o" | letter == "i" | letter == "u") {
      cat(letter, " vowel", "\n")
    } else {
      cat(letter, " consonant", "\n")
    }
  } 
}



