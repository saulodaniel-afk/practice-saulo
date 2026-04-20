git clone https://github.com/saulodaniel-afk/practice-1.git
cd practice-1  
git checkout -b terra    
git checkout -b agua
git branch   
git add . 
git commit -m "creating the t1 and t2 files 'criando na terra' "
git push -u origin terra   
git checkout agua         
git checkout terra -- t1.txt   
git add .
git commit -m "bringing the t1.txt file to agua branch"
git push -u origin agua
git commit -am "changing the first line of the text" 
git push
git branch
git checkout main 
git fetch --all
git pull
git merge agua
git push
git fetch --all
git pull
git merge terra
git add .  
git commit -m "solving the conflict in the t1.txt"     
git push
