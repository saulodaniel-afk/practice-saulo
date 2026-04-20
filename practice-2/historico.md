touch file1.txt
  469  echo "\n\n\n\n\n\n\n\n\n\n" >> file1.txt
  470  touch fileeeee2.txt
  471  mv fileeeee2.txt file2.txt
  472  cat file1.txt
  473  cat file2.txt
  474  awk 'NR>=1 && NR<=3' file1.txt >> file2.txt 
  475  cat file1.txt
  476  cat file2.txt
  477  cat -n file1.txt
  478  cat -n file2.txt
  479  awk 'NR>=9 && NR<=11' file1.txt > file2.txt 
  480  cat -n file1.txt
  481  cat -n file2.txt
  482  awk 'NR>=1 && NR<=3' file1.txt >> file2.txt 
  483  cat -n file2.txt
  484  awk 'NR != 1' file2.txt
  485  awk 'NR != 10' file2.txt
  486  cat -n file2.txt