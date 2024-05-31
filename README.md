# Automated Readability Index 

This code calculates the __Automated Readability Index (ARI)__ of a book and categorizes the book into different grades based on the __ARI__. Before writing the code, I researched the Automated Readability Index by searching multiple sources like __ChatGPT__, __GeeksforGeeks__, etc. From reading about __ARI__, I learned that it is a readability test that measures the understandability of a text.

I found the formula for __ARI__ from sources shared by Bala sir on Slack. Using this formula, I can find the __ARI__ of a text and __grade__ it based on the __ARI__ value. The first step was to create a file and type the code. From the start, I had to decide whether to use a __function__ in my code or not. I decided to use it since I know how to use it and it makes it easier to organize my code into different sections. I started the code by prompting the user to input the file name from the command line. My first task was to find the __word count__, __character count__, and __sentence count__ from the given file. I knew how to find the __word__ and __character__ counts, but I couldn't find the __sentence count__. I referred to __ChatGPT__ to find the sentence count from the text.

After finding the sentence count, it was time to find the __ARI__ using these values. All I had to do was substitute these values into the __ARI__ formula. But then I encountered the first major error in my code: floating point arithmetic. Bash doesn't support floating point arithmetic operations. After realizing the error, I started looking for possible solutions. I preferred to look for answers on __Stack Overflow__, which is a good website for solving these kinds of errors. I finally found the answer: I had to use a tool called __bc__, a command-line calculator that provides arbitrary precision arithmetic in Unix-like operating systems, including Bash. By using this tool, I was able to solve the problem and find the __ARI__ of the text.

After finding the ARI, it was time to grade the text based on the ARI values. I used another function for this and called that function inside this function. I knew that grading starts from __Kindergarten__ to __college__, and I had to check for each case using __if__ and __elif__ condition statements. Before that, I encountered another problem while defining variables inside the function. I referred to __ChatGPT__ and finally used __local variables__ because I only needed them inside the function. Finally, I finished writing the code for this problem. I used __if__ and __elif__ condition statements to check the grade and printed out the grade.

Solving this problem helped me learn how to use __functions__ effectively and declare __local variables__ and their use cases. It also helped me search for solutions effectively on different __websites__ and __ChatGPT__.






