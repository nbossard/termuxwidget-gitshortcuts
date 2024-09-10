# manually sourcing .bashrc
# cause non-interactive shell don't source rc or profile files
# See : https://github.com/termux/termux-widget/issues/114
# so sourcing it manually (to get env var REPO_FOLDER)
# Also note that "source" command does not work, so using "."
. $HOME/.bashrc
cd  $REPO_FOLDER

git reset -p
