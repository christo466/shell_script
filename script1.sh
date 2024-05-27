#!/bin/bash

# Function to check the grade level based on ARIF score
check() {
    local value=$1
    local lower_bound1=1
    local lower_bound2=2
    local lower_bound3=3
    local lower_bound4=4
    local lower_bound5=5
    local lower_bound6=6
    local lower_bound7=7
    local lower_bound8=8
    local lower_bound9=9
    local lower_bound10=10
    local lower_bound11=11
    local lower_bound12=12
    local lower_bound13=13
    local lower_bound14=14
    local lower_bound15=15
    local lower_bound16=24

    kindergarter=$(echo "$value >= $lower_bound1 && $value < $lower_bound2" | bc)
    firstGrade=$(echo "$value >= $lower_bound2 && $value < $lower_bound3" | bc)
    secondGrade=$(echo "$value >= $lower_bound3 && $value < $lower_bound4" | bc)
    thirdGrade=$(echo "$value >= $lower_bound4 && $value < $lower_bound5" | bc)
    fourthGrade=$(echo "$value >= $lower_bound5 && $value < $lower_bound6" | bc)
    fifthGrade=$(echo "$value >= $lower_bound6 && $value < $lower_bound7" | bc)
    sixthGrade=$(echo "$value >= $lower_bound7 && $value < $lower_bound8" | bc)
    seventhGrade=$(echo "$value >= $lower_bound8 && $value < $lower_bound9" | bc)
    eighthGrade=$(echo "$value >= $lower_bound9 && $value < $lower_bound10" | bc)
    ninthGrade=$(echo "$value >= $lower_bound10 && $value < $lower_bound11" | bc)
    tenthGrade=$(echo "$value >= $lower_bound11 && $value < $lower_bound12" | bc)
    eleventhGrade=$(echo "$value >= $lower_bound12 && $value < $lower_bound13" | bc)
    twelfthGrade=$(echo "$value >= $lower_bound13 && $value < $lower_bound14" | bc)
    college=$(echo "$value >= $lower_bound14 && $value < $lower_bound15" | bc)
    professor=$(echo "$value >= $lower_bound15 && $value < $lower_bound16" | bc)

    if [ "$kindergarter" -eq 1 ]; then
        echo "Kindergarter"
    elif [ "$firstGrade" -eq 1 ]; then
        echo "First Grade"
    elif [ "$secondGrade" -eq 1 ]; then
        echo "Second Grade"
    elif [ "$thirdGrade" -eq 1 ]; then
        echo "Third Grade"
    elif [ "$fourthGrade" -eq 1 ]; then
        echo "Fourth Grade"
    elif [ "$fifthGrade" -eq 1 ]; then
        echo "Fifth Grade"
    elif [ "$sixthGrade" -eq 1 ]; then
        echo "Sixth Grade"
    elif [ "$seventhGrade" -eq 1 ]; then
        echo "Seventh Grade"
    elif [ "$eighthGrade" -eq 1 ]; then
        echo "Eighth Grade"
    elif [ "$ninthGrade" -eq 1 ]; then
        echo "Ninth Grade"
    elif [ "$tenthGrade" -eq 1 ]; then
        echo "Tenth Grade"
    elif [ "$eleventhGrade" -eq 1 ]; then
        echo "Eleventh Grade"
    elif [ "$twelfthGrade" -eq 1 ]; then
        echo "Twelfth Grade"
    elif [ "$college" -eq 1 ]; then
        echo "College"
    elif [ "$professor" -eq 1 ]; then
        echo "professor"
    fi
}

# Function to calculate ARIF and check the grade level
book() {
    echo "Enter the file name:"
    read book1

   

    # Calculate word count, sentence count, and character count
    wordcount=$(wc -w < "$book1")
    sentence_count=$(grep -o '[.!?]' "$book1" | wc -l)
    characters=$(wc -m < "$book1")

    echo "The file $book1 contains:"
    echo "- $wordcount words"
    echo "- $sentence_count sentences"
    echo "- $characters characters"

    # Calculate ARIF
    ARIF=$(echo "scale=2; 4.71 * ($characters / $wordcount) + 0.5 * ($wordcount / $sentence_count) - 21.42" | bc)
    echo "Your Automatic Readability Index (ARIF) is $ARIF"

    # Check grade level
    check "$ARIF"
}

book
