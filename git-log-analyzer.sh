 #rm commits.local.tsv
 #rm every10thCommit.local.csv

 #git log --date=local --reverse --pretty=format:"%h,%x09,%an,%x09,%ad,%x09,%s,%x09,%f" > commits.local.tsv

 #n=10000
 #every nth Commit

 #awk -v n=$n 'NR%n==0' commits.local.tsv > every10thCommit.local.csv

 
   #each commit
   #sha="$(echo  $line | sed  's/, ,/,/g' | cut -d ',' -f1)"
   #author="$(echo  $line | sed  's/, ,/,/g' | cut -d ',' -f2)"
   #time="$(echo  $line | sed 's/, ,/,/g' | cut -d ',' -f3)"
   #comment="$(echo  $line | sed 's/, ,/,/g' | cut -d ',' -f4)"
   #subject="$(echo  $line | sed 's/, ,/,/g' | cut -d ',' -f5)"


  git checkout HEAD~3 .
   
  git switch -c "head-3-branch"

  mkdir ./.github
  mkdir ./.github/workflows/

  cp ~/Documents/main.yaml ./.github/workflows/

  git add --all

  git commit -m "Pushing Old Branch Head-3"

  git push origin "head-3-branch"

  git branch 

  
 #done < every10thCommit.local.csv
