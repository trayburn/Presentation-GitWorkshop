# Make sure we're on master
git checkout master

# Merge working, since it shares our branches ancestor
git merge working

# move to feature
git checkout feature

# Rebase to master, so we'll have a common ancestor
git rebase master

# back to master
git checkout master

# Now merge feature
git merge feature

# move to bugfix
git checkout bugfix

# rebase to master, so we'll have a common ancestor
git rebase master

# Uh-Oh, merge conflicts
# this script will do a manual merge
# You should use : git mergetool

git checkout --theirs .\file1.txt
git add .
git rebase --continue

git checkout --theirs .\file2.txt
git add .
git rebase --continue

git checkout --theirs .\file3.txt
git add .
git rebase --continue

# back to master
git checkout master

# Now merge bugfix
git merge bugfix
