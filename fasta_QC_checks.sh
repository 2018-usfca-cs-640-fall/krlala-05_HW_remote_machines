#using echo to print a line about the script's general purpose
echo -e "\n\nThis is a log file-Output from preliminary quality control checks on selected fasta files"
#using the date command to give the current(When user runs this) date and time. %Y specifies year, 
#and -,: are delimiters.
date '+%Y-%m-%d %H:%M:%S'
#using echo to print what information about each fasta file will be displayed. \n is to go to newline,
#-e is an option to allows use of  \n
echo -e "\n\n Output for each fasta file includes:\nFilename. file size, first three lines, last three 
lines, the number of sequences in the file, and the \n sequence identifier lines sorted alphabetically.
\n\n####################
for file in "$@"
do
  echo -e "Output for "$file":\n"
  z=$(du -h $file | cut -f 1)
  echo -e "Size:"$z" \n\nFirst three lines:\n----------\n"
  head -3 $file
  echo -e "\n Last three lines:\n--------\n"
  tail -3 $file
  t=$(grep -c ">" $file)
  echo -e "\nNumber of sequences:"$t"\n"
  grep ">" $file | cut -d " " -f 2-3
done
