To unstage the file to current commit (HEAD): `git reset HEAD <file>`
To overwrite local changes: `git checkout -- <file>`
Uncommit last commit and keep changes: `git reset --soft HEAD^`
Reset uncommitted changes to staging: `git reset --hard origin/staging`
Move last 2 commits in staging to a new branch:
```
git checkout newbranch
git merge staging
git checkout staging
git reset --hard HEAD~3 # Go back 3 commits. You *will* lose uncommitted work.
git reset --hard <commit hash to reset to>
git checkout newbranch
```
Delete branches by pattern: ``git branch -d `git branch --list 'NE-*'` ``
Rename current branch:
```
git branch -m <new_name>
git push origin -u <new_name>
git push origin --delete <old_name>
```
Rebase to squash all commits in branch to one commit:
```
git rebase -i <commit hash of the one you want to squash after>
replace all pick words with s after the first one
write a nice message with ticket id
```
Rebase to put commits from main into a feature branch:
1. Go to the branch in need of rebasing (recipient of commits)
2. Enter git fetch origin (This syncs your main branch with the latest changes)
3. Enter git rebase origin/main
4. Fix merge conflicts that arise however you see fit
5. After fixing merge conflicts, git add FILE previously merge conflicted files
6. Enter git rebase --continue (or git rebase --skip if git complains that there were no changes after resolving all conflicts)
7. Repeat as necessary as merge conflicts arise in the subsequent commits
8. Once the rebase is complete, enter git push origin HEAD --force
