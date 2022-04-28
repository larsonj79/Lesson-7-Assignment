# Lesson 7 Assignment - Intermediate R Part 2

# Your assignment is to write the commands instructed in the comments below. To run your
# commands, simply hit Ctrl+Enter (command+return on a MAC) when the cursor is on that 
# command line. You can also type commands directly into the Console below, but you must
# save them in this file for your assignment.

# Do not change these four lines of code or GradeScope will not work
library(dplyr)
library(readxl)
pldat <- read_excel("PowerLiftingMeets18to19.xlsx")


# The code below has multiple levels of *if()* statements and a *for()* loop. Examine 
# the code and/or execute it to understand what the code does. (You may change the value 
# assigned to *num* and execute the code with a few different numbers.) 
num <- 4

if(num <= 0) {
  print("ERROR")
} else if(num %% 1 == 0) {
  if(num %% 2 == 0) {
    if(num == 2) {
      print("prime")
    } else {
      print("even")
    }
  } else {
    prm_ind <- 0
    if(num %in% c(1,3)) {
      print("prime")
    } else {
      for(i in seq(3, ceiling(num/2), by = 2)) {
        if(num %% i == 0) {
          print("odd")
          prm_ind <- 1
          break
        }
      }
      if(prm_ind == 0) {print("prime")}
    }
  }
} else {
  print("ERROR")
}

#1. What does this code do?
#  * ENTER ANSWER HERE *

#2. What does the *for()* loop starting on line 33 do? (You may execute portions 
# of the code to help you understand it. I suggest you start by executing only 
# the *seq()* function code.)
#  * ENTER ANSWER HERE *

#3. Instead of executing all of these lines of code, we can make it a function 
# called *num_class*. The new function, instead of printing text to the screen, 
# will return that text. In other words, create the *num_class* function, changing 
# each *print* command to a *return* command. 
# (https://campus.datacamp.com/courses/intermediate-r/chapter-3-functions?ex=11)


#4. Test the new *num_class* function on these values: -2, 4, 79, 1508. Save the
# results as nctry1, nctry2, nctry3, nctry4, respectively.


#5. Use the *rep()* function to create a vector of length 100 called *numtypes*. 
# Every entry in the vector should be the character 'a'. 
# (https://campus.datacamp.com/courses/intermediate-r/chapter-5-utilities?ex=4)


#6. The *numtypes* vector is a pre-allocated storage variable. Use a *for()* 
# loop with the *num_class* function to find the number type of every integer 
# from 1 to 100. Store the results in the *numtypes* vector.


#7. How many integers from 1 to 100 are prime numbers? Save the answer as
# prime1to100.



## Powerlifting Data
# For the rest of the assignment, you'll be using data from powerlifting meets 
# from 2018 and 2019. The data has already been loaded as pldat. You should be 
# able to see it in the Global Environment at the top right. If you can't,
# execute the first four lines of code at the top of this file.

#8. Get a feel for the data by using the str() function.


#You should have noticed that this data has lots of missing values. Powerlifting 
# has three main lifts: squat, bench press, and deadlift, but not all meets test 
# all three lifts. Most analyses we want to run will return an error if they 
# encounter missing values, so we need to clean up the data first.

#9. We want to examine bench press results. Use dplyr to create a dataset called 
# benchp that includes the following variables: Name, Sex, Age, Bench1Kg, Bench2Kg, 
# Bench3Kg, Best3BenchKg, and Country. Remove any rows that are missing values on 
# any of the bench press variables. (The *is.na()* function returns TRUE for missing 
# values and FALSE for non-missing values.)


#10. Now we're going to create a dataset called benchp2 that will be identical to 
# benchp, but we're going to create it without using dplyr. You will have to select 
# a subset of rows and a subset of columns. (Hints: Use [] to select portions of a 
# data frame. In lesson 6 you learned &, |, and !. Use one of those to create your 
# selection of rows. )


#11. Using dplyr, find the man and woman from each country with the heaviest 
# successful bench press (use the Best3BenchKg variable) and output the top ten 
# weights of both men and women, sorted by gender and weight lifted. Include only the 
# following variables in the final report: Name, Sex, Age, Best3BenchKg, and Country. 
# The first 10 rows of the report should look like the file BenchByCountryandSex.png.


#12. Suppose you are a 54-year-old man and want to know how your squat weight compares 
# to athletes of your same age. Create a dataset called *pl50* that: (1) includes all 
# male athletes from a Division in that age range that (2) have non-missing Best3SquatKg 
# entries and (3) includes these variables: Name, Sex, Event, Age, Division, Best3SquatKg,
# and Date. (Don't use AgeClass to select comparable competitors; use Division. Some
# Divisions go from 50-54 and some go from 50-59. You need both of those outputted into 
# your dataset. Use the *unique* function to see all of the Divisions so you know what to 
# look for. Use *grepl* or *grep* to filter the appropriate age categories.) 
# https://campus.datacamp.com/courses/intermediate-r/chapter-5-utilities?ex=8


#13. Let's say you can squat 150 Kilograms (as a 54-year-old man). Are you an 
# above-average squatter for your age? (Enter the code that will print TRUE or FALSE to
# indicate whether 150 kilograms is above average.)

