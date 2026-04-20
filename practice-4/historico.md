  584  mkdir practice-4
  585  cd practice-4
  586  curl -O https://www.gnu.org/licenses/agpl-3.0.txt
  587  wc -l agpl-3.0.txt
  588  sed -i '' '661d' agpl-3.0.txt
  589  wc -l agpl-3.0.txt
  590  sed -n '/END OF TERMS AND CONDITIONS/,/GNU AGPL, see/p' agpl-3.0.txt > end.txt
  591  grep -o "license" agpl-3.0.txt | wc -l
  592  sed -n '/9. /,/10./p' agpl-3.0.txt > seções-importantes.txt
  593  sed -n '/15. /,/GNU AGPL, see/p' agpl-3.0.txt >> seções-importantes.txt
  595  sed -i '' '12d' seções-importantes.txt
