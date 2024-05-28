# shell_script
## Automated Readability Index

We use __./script1.sh__ to run the program for checking ARI. First we call __book()__ function which prompts the user to enter the file for checking the __ARI__. We use the __$(wc -w < "$book1")__ command for finding the word count from the file. __"$book1"__ is used for reference to the book1 variable and we directs the output to __wc -w__ which counts the number of words in the file. We store this value to a variable called __wordcount__. 

we use this command for __$(grep -o '[.!?]' "$book1" | wc -l)__ for finding the sentence count. The grep is used for searching text files and using __-o__ tells the grep to only print the characters inside the square brackets. we give this as input to the __wc -l__ using the __|__ called pipping. the wc -l counts the number of lines which gives the count of sentences.

We use __$(wc -m < "$book1")__ for finding the character count.book1 is referenced here using $book1 to wc -m . __wc -m__ is used for finding the count of characters in the __book1__. 

We use the __ARIF=$(echo "scale=2; 4.71 * ($characters / $wordcount) + 0.5 * ($wordcount / $sentence_count) - 21.42" | bc)__ formula for finding the ARI. substitute values of the __characters__ , __wordcount__ and __sentence__.

After that we call the function __check__ and pass the __ARI__ value as the argument to the function. We assigned the ARI value to the local variable __value=$1__. we also define the local variables lowerbound1 to lowerbound16 for checking ARI value from 1 to 14.  

After that we try to find grade for the file by comparing the value with the each lowerbound from __lowerbound1__ to __lowerbound16__. we use bc for performing float arithematic operations. the echo out put which is a string expression is given to bc which produces a zero or one.

After that we use if statements for checking file grade by comparing the each variable value with 1. after finding the grade we print the grade as output using echo.
