# install script
cd /
mkdir .shortcuts
# adding links for all scripts
# This is better than linking the whole folder cause it is more clean on widget display
ln -s termuxwidget-gitshortcuts/gitaddpoints.sh .shortcuts/gitaddpoints.sh
ln -s termuxwidget-gitshortcuts/gitdiff.sh .shortcuts/gitdiff.sh
ln -s termuxwidget-gitshortcuts/gitpull.sh .shortcuts/gitpull.sh
ln -s termuxwidget-gitshortcuts/gitpush.sh .shortcuts/gitpush.sh
ln -s termuxwidget-gitshortcuts/gitresethard.sh .shortcuts/gitresethard.sh
ln -s termuxwidget-gitshortcuts/gitstatus.sh .shortcuts/gitstatus.sh
