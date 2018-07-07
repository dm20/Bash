# rename all of the files in a directory to "file_count.txt", where count is incremented for each file in the directory
# the parameters in the for loop declaration can be modified as needed to match a filename pattern 

declare -i count=1

for item in *.txt
do
  mv "$item" "file_$count.txt"
  (( count++ ))
done
