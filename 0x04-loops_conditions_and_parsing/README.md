##  0x04 Loops, conditions and parsing
Tasks:
# 1.Writing a bash script that displays Best School 10times using for loop
The for loop is the first of the three looping constructs. It allows for specialization of a list of values. List of command is executed for each value in the list.
The syntax for this loop is:
for NAME[in LIST]; do COMMANDS; done
# 2. Writing a bash script that displays "Best School" 10 times using while loop
While construct allows for repetitive execution of a list of commands, as long as the command controlling the while loop executes successfully(exit status of zero)
Syntax:
while CONTROL-COMMAND; do CONSEQUENT-COMMANDS; done

Example:
/#!/bin/bash

/#This script opens 4 terminal windows.

i="0"

while [ $i -lt 4 ]
do
xterm &
i=$[$i+1]
done

#Task 4
Bash scripting using while loop and and an if statement
In the 9th iteration if statement is used

# Task 7
Write a Bash script that displays the time for 12 hours and 59 minutes:

* display hours from 0 to 12
* display minutes from 1 to 59
Requirements:

* You must use the while loop (for and until are forbidden)
# Task 8
Write a Bash script that displays:

* The content of the current directory
* In a list format
* Where only the part of the name after the first dash is displayed (refer to the example)
Requirements:

* You must use the for loop (while and until are forbidden)
* Do not display hidden files

# Task 10
Write a Bash script that displays numbers from 1 to 100.

Requirements:

* Displays FizzBuzz when the number is a multiple of 3 and 5
* Displays Fizz when the number is multiple of 3
* Displays Buzz when the number is a multiple of 5
* Otherwise, displays the number
* In a list format
