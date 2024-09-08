# manually sourcing .bashrc
# cause non-interactive shell don't source rc or profile files
# See : https://github.com/termux/termux-widget/issues/114
# so sourcing it manually (to get env var REPO_FOLDER)
# Also note that "source" command does not work, so using "."
. $HOME/.bashrc
cd  $REPO_FOLDER

#compact display for phones

git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s' --abbrev-commit --date=relative --branches

# Alternative smarter display for tablets, with date and committer name and white lines between commits
#
#git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset%n' --abbrev-commit --date=relative --branches
