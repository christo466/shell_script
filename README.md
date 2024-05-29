# Automated Readability Index 

This code is for calculating the Automated Readability Index (ARI) of a book and categorizing the book into different grades based on the ARI.

### Running the Program
We use __./script1.sh__ to run the program for checking the __ARI__. First, we call the __book()__ function, which prompts the user to enter the file for checking the __ARI__.

### Word Count
We use the __$(wc -w < "$book1")__ command for finding the word count from the file. __"$book1"__ is used to reference the __book1__ variable, and we direct the output to __wc -w__, which counts the number of words in the file. We store this value in a variable called __wordcount__.

### Sentence Count
We use this command __$(grep -o '[.!?]' "$book1" | wc -l)__ for finding the sentence count. grep is used for searching text files, and using -o tells grep to only print the characters inside the square brackets. We give this as input to __wc -l__ using the | (pipe). The __wc -l__ counts the number of lines, which gives the count of sentences.

### Character Count
We use __$(wc -m < "$book1")__ for finding the character count. __"$book1"__ is referenced here using __$book1__ to __wc -m__. __wc -m__ is used for finding the count of characters in __"$book1"__.

### Automated Readability Index
We use the __ARIF=$(echo "scale=2; 4.71 * ($characters / $wordcount) + 0.5 * ($wordcount / $sentence_count) - 21.42" | bc)__ formula for finding the __ARI__. Substitute values of the __characters__, __wordcount__, and __sentence_count__.

### Calling the Check Function
After that, we call the function __check__ and pass the __ARI__ value as the argument to the function. We assign the __ARI__ value to the local variable as __value=$1__. We also define the local variables __lowerbound1__ to __lowerbound16__ and assign values to them from 1 to 14 for checking the __ARI__ value.

### Grading the File
After that, we try to find the grade for the file by comparing the value with each lowerbound from __lowerbound1__ to __lowerbound16__. We use __bc__ for performing float arithmetic operations. The __echo__ output, which is a string expression, is given to __bc__, which produces a zero or one. After that, we use if statements for checking the file grade by comparing each variable value with 1. After finding the grade, we print the grade as output using echo.

### Problems Faced and solutions
- Faced problems while performing floating point arithmetic. Solved the problem by using __bc__ which is used for performing floating point arithmetic.
- Faced problems while trying to find sentence count of the file. Solved the problem by referring chatgpt.

### Conclusion
This program helped me to understand the basic working of the shell scripting. This program is used to find the ARI of a book and grade it based on the ARI value.
