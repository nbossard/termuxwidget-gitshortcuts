cd ~/storage/documents/obsperso

#compact display for phones

git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s' --abbrev-commit --date=relative --branches

# Alternative smarter display for tablets, with date and committer name and white lines between commits
#
#git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset%n' --abbrev-commit --date=relative --branches
