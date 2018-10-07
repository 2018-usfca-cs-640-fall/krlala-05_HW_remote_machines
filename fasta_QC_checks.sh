
#!bin/bash
#using echo to print a line about the script's general purpose
echo -e "\n\nThis is a log file-Output from preliminary quality control checks on selected fasta files"
#using the date command to give the current(When user runs this) date and time. %Y specifies year, 
#and -,: are delimiters.
date '+%Y-%m-%d %H:%M:%S'
#using echo to print what information about each fasta file will be displayed. \n is to go to newline,
#-e is an option to allows use of  \n
echo -e "\n\n Output for each fasta file includes:\nFilename, file size, first three lines, last three
lines,the number of sequences in the file, and the \nsequence identifier lines sorted alphabetically.
\n\n####################\n"
# The for loop iterates all the commands in it for each file given to it
#$@ allows us to take  user input to process
for file in "$@"
do
  echo -e "\nOutput for "$file":\n"
 #storing value of du, which fetches the disk space occupied, -h for human readable form, and using 
#cut to only get the value not the filename, and storing in in z.
  z=$(du -h $file | cut -f 1)
  echo -e "Size:"$z" \n\nFirst three lines:\n----------\n"
#head for first three lines of a file
  head -3 $file
  echo -e "\n Last three lines:\n--------\n"
#tail for last three lines of the file
  tail -3 $file
# using grep to find instances of  >, and counting them with -c, storing that number in t.
  t=$(grep -c ">" $file)
  echo -e "\nNumber of sequences:"$t"\n"
#using a similar grep, and using  cut to extract just the genus and species. -d and the quotes after 
# used to specify delimiter, -f for specifying which fields to be extracted, piping grep output to cut.
#Piping that output to a simple sort sorts alphabetically.
  echo -e "Sequence identifier:\n"
  grep ">" $file | cut -d " " -f 2-3 | sort
  echo -e "\n###############################\n"
done
