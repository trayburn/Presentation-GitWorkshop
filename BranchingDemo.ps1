.\Clean.ps1 .\BranchingDemo
.\Prep.ps1 BranchingDemo

# Setup one commit on master
echo $null > README
git add .
git commit -am "First Commit"

# Branch to working
git checkout -b working

# do work & commit
echo $null > file1.txt
git add .
git commit -am "working commit1"
echo $null > file2.txt
git add .
git commit -am "working commit2"
echo $null > file3.txt
git add .
git commit -am "working commit3"

# back to master
git checkout master

# branch to feature
git checkout -b feature

# do work & commit
echo $null > file4.txt
git add .
git commit -am "feature commit1"
echo $null > file5.txt
git add .
git commit -am "feature commit2"
echo $null > file6.txt
git add .
git commit -am "feature commit3"


# back to master
git checkout master

# branch to bugfix
git checkout -b bugfix

# do work & commit
echo $null > file1.txt
"Hello World" > file1.txt
git add .
git commit -am "bugfix commit1"
echo $null > file2.txt
"Hello World" > file2.txt
git add .
git commit -am "bugfix commit2"
echo $null > file3.txt
"Hello World" > file3.txt
git add .
git commit -am "bugfix commit3"

# back to master
git checkout master

clear