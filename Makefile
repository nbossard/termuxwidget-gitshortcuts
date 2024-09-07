
help:
	@echo "Usage : make"
	@echo "$(MAKEFILE_LIST)"
	@egrep -h '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "    \033[36m%-20s\033[0m %s\n", $$1, $$2}'
	@printf "\n"

recreate_shortcuts_folder: ## 💣Delete💣 and recreate .shortcuts folder
	rm -rf ~/.shortcuts
	mkdir ~/.shortcuts

create_links: ## Create symbolic links in .shortcuts folder
	# adding links for all scripts
	# This is better than linking the whole folder cause it is more clean on widget display
	ln -s gitaddpick.sh ~/.shortcuts/gitaddpick.sh
	ln -s gitaddpoints.sh ~/.shortcuts/gitaddpoints.sh
	ln -s gitdiff.sh ~/.shortcuts/gitdiff.sh
	ln -s gitpull.sh ~/.shortcuts/gitpull.sh
	ln -s gitpush.sh ~/.shortcuts/gitpush.sh
	ln -s gitresethard.sh ~/.shortcuts/gitresethard.sh
	ln -s gitstatus.sh ~/.shortcuts/gitstatus.sh

