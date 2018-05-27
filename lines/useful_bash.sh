# Use these lines in terminal on your mac
# 1) username:~ "line"
# 2) Hit Enter

#nano script
    #from command line:
    >> nano script.sh

    #in the nano file:

        #!/bin/bash
        echo This is a Bash script # simple example that prints this message when script is run

    #from command line:
    username:~ chmod +x script.sh
    username:~ ./script.sh # run the script

#declare an array
declare -a a

#declare an integer
declare -i index=0

#wait n seconds
sleep n

#find out what directory you're in
pwd

# list all networks your device has been on
# note this ignores case (-i) and will accept substring arguments (i.e. if you look for "stanford" you need only search for "nfor")
networksetup -listpreferredwirelessnetworks en0 | grep -i "someString"

# array length
${#ArrayName[@]}

#ternary
[[ $numberOfUniqueWords > 1 ]] && word1="words" || word1="word"

#string params
echo "There $word2 $numberOfUniqueWords unique $word1 in this file"

#loop through text file line by line
while IFS='' read -r line || [[ -n "$line" ]]; do
    echo $line
done < "$1"

#array length of array 'a'
declare -i length=${#a[@]}


#for loop
for (( i=0; i<${length}; i++ ));
do
    echo hi
done

#boolean named bool equal to true
bool=true

#if 
if [ "${a[i]}" == "${a[j]}" ]
then
    echo they are equal
fi
