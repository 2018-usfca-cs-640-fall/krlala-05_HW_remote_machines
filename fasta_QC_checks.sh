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
done
