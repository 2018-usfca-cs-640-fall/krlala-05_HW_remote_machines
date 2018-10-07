#!bin/bash
#My name is karan lala, email- krlala@usfca.edu
#This is a script for hw5, working on remote machines
#We're in the homework folder, which has this script and the data folder in it, which we will use.
#Using the unzip command to unzip .zip files from data,and storing them in data
echo "Unzipping zipped files into data"
unzip -d data "data/*.zip"
#using echo  to print a line about what this script will do in general
echo -e "\n\nThis is a log file-Output from preliminary quality control checks on selected fasta files"
#using the date command to give the current(When user runs script)date and time. The modifiers in 
#quotes add year(%Y),month,day, then leave a space and time, with "-" and ":" serving as delimiters
date '+%Y-%m-%d %H:%M:%S'
#using echo to print what information about each fasta file will be displayed .\n leaves line, -e is an
#option that allows use of \n
echo -e "\n\nOutput for each fasta includes:\nFilename, file size, first three lines, last three lines,
the number of sequences in the file, and the\nsequence identifier lines sorted alphabetically.\n\n#######################\n"

