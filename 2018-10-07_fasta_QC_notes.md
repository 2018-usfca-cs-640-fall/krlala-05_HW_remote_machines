# Analyzing output of script that examines basic details of fasta files

*Stating the general anomalies seen, keeping in mind the script isn't
*exactly perfect


1. Head command in the script doesn't seem to run perfectly, prints the 
first three lines for some fasta files, lot more than 3 for others.

2. Tail command also seems to print more than the last three lines for 
some files. Some files seem to have empty lines at the end as well.

3. For the grep and cut command to print sequence identifiers, there
seems to be too much information with this character- ">". The 
delimiters also differ between files, some having a space, some with 
"|" which affects the output.

The filename, disk space it uses and number of sequences
(if everything with a ">" is followed by a seq, one seq for each">") 
look fine.
