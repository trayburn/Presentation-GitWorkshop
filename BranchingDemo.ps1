# Cleanup any previous execution
if (Test-Path .\BranchingDemo)
{
    Remove-Item -Recurse -Force .\BranchingDemo
}

# Create a git repo
mkdir .\BranchingDemo
cd .\BranchingDemo
git init

# Setup one commit on master
touch README
git add .
git commit -am "First Commit"

# Branch to working
git checkout -b working

# do work & commit
touch file1.txt
git add .
git commit -am "working commit1"
touch file2.txt
git add .
git commit -am "working commit2"
touch file3.txt
git add .
git commit -am "working commit3"

# back to master
git checkout master

# branch to feature
git checkout -b feature

# do work & commit
touch file4.txt
git add .
git commit -am "feature commit1"
touch file5.txt
git add .
git commit -am "feature commit2"
touch file6.txt
git add .
git commit -am "feature commit3"


# back to master
git checkout master

# branch to bugfix
git checkout -b bugfix

# do work & commit
touch file1.txt
"Hello World" > file1.txt
git add .
git commit -am "bugfix commit1"
touch file2.txt
"Hello World" > file2.txt
git add .
git commit -am "bugfix commit2"
touch file3.txt
"Hello World" > file3.txt
git add .
git commit -am "bugfix commit3"

# back to master
git checkout master

clear