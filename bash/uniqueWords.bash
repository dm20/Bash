# this script counts the number of unique words in a file where words are separated line by line
# it is intended as a blueprint that can be extended to the parsing of many file types with Bash

#!/bin/bash

declare -a a
declare -i index=0

while IFS='' read -r line || [[ -n "$line" ]]; do
        a[index]=$line
    ((index++))
done < "$1"

declare -i length=${#a[@]}
declare -i numberOfUniqueWords=${#a[@]}

for (( i=0; i<${length}; i++ ));
do
    bool=true
    for ((j=0; j<${length}; j++))
    do
        if [ "${a[i]}" == "${a[j]}" ]
        then
            if (( $i != $j && numberOfUniqueWords > 0))
            then
                if "$bool" == true
                then        
                    bool=false
                    (( numberOfUniqueWords-- ))
                fi
            fi
        fi
    done
done

[[ $numberOfUniqueWords > 1 ]] && word1="words" || word1="word"
[[ $numberOfUniqueWords > 1 ]] && word2="are" || word2="is"

printf "\n"
echo "There $word2 $numberOfUniqueWords unique $word1 in this file"
printf "\n"
