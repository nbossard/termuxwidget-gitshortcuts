
help:
	@echo "Usage : make"
	@echo "$(MAKEFILE_LIST)"
	@egrep -h '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "    \033[36m%-20s\033[0m %s\n", $$1, $$2}'
	@printf "\n"

recreate_shortcuts_folder: ## 💣Delete💣 and recreate .shortcuts folder
	cd ~
	rm -rf .shortcuts
	mkdir .shortcuts

create_links: ## Create symbolic links in .shortcuts folder
	# adding links for all scripts
	# This is better than linking the whole folder cause it is more clean on widget display
	ln -s termuxwidget-gitshortcuts/gitaddpick.sh .shortcuts/gitaddpick.sh
	ln -s termuxwidget-gitshortcuts/gitaddpoints.sh .shortcuts/gitaddpoints.sh
	ln -s termuxwidget-gitshortcuts/gitdiff.sh .shortcuts/gitdiff.sh
	ln -s termuxwidget-gitshortcuts/gitpull.sh .shortcuts/gitpull.sh
	ln -s termuxwidget-gitshortcuts/gitpush.sh .shortcuts/gitpush.sh
	ln -s termuxwidget-gitshortcuts/gitresethard.sh .shortcuts/gitresethard.sh
	ln -s termuxwidget-gitshortcuts/gitstatus.sh .shortcuts/gitstatus.sh

