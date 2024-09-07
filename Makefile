
help:
	@echo "Usage : make"
	@echo "$(MAKEFILE_LIST)"
	@egrep -h '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "    \033[36m%-20s\033[0m %s\n", $$1, $$2}'
	@printf "\n"

recreate_shortcuts_folder: ## 💣Delete💣 and recreate .shortcuts folder
	rm -rf ~/.shortcuts
	mkdir ~/.shortcuts
	@echo "✅ Done"

create_links: ## Create symbolic links in .shortcuts folder
	# adding links for all scripts
	# This is better than linking the whole folder cause it is more clean on widget display
	# -sf : create symbolic links, force if already exists
	@echo "⏳ Creating symbolic links"
	ln -sf gitaddpick.sh ~/.shortcuts/gitaddpick.sh
	ln -sf gitaddpoints.sh ~/.shortcuts/gitaddpoints.sh
	ln -sf gitdiff.sh ~/.shortcuts/gitdiff.sh
	ln -sf gitpull.sh ~/.shortcuts/gitpull.sh
	ln -sf gitpush.sh ~/.shortcuts/gitpush.sh
	ln -sf gitresethard.sh ~/.shortcuts/gitresethard.sh
	ln -sf gitstatus.sh ~/.shortcuts/gitstatus.sh
	@echo "✅ Done"

