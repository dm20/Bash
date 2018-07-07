# SOME USEFUL BASH

### ~ declare an integer
    declare -i index=0

### ~ declare a boolean named bool equal to true
    bool = true

### ~ declare an array
    declare -a a

### ~ get array length
    ${#ArrayName[@]}

### ~ get array length of array named 'a'
    declare -i length=${#a[@]}

### ~ place variables within string (variables in this case are called word2, numberOfUniqueWords, and word1)
    "There $word2 $numberOfUniqueWords unique $word1 in this file"

### ~ pause for n seconds
    sleep n

### ~ print "Hello, World!" to stdout
    echo Hello, World!

### ~ loop through a text file line by line
    while IFS='' read -r line || [[ -n "$line" ]]; do
        echo $line
    done < "$1"

### ~ for loop
    for (( i=0; i<${length}; i++ ));
    do
        echo hi
    done

### ~ if statement
    if [ "${a[i]}" == "${a[j]}" ]
    then
        echo they are equal
    fi

### ~ ternary operator of sorts
    [[ $numberOfUniqueWords > 1 ]] && word1="words" || word1="word"
