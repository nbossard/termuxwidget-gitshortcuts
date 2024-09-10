
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
	ln -sf $(CURDIR)/gitaddpick.sh ~/.shortcuts/gitaddpick.sh
	ln -sf $(CURDIR)/gitaddpoints.sh ~/.shortcuts/gitaddpoints.sh
	ln -sf $(CURDIR)/gitcommitm.sh ~/.shortcuts/gitcommitm.sh
	ln -sf $(CURDIR)/gitdiff.sh ~/.shortcuts/gitdiff.sh
	ln -sf $(CURDIR)/gitlog.sh ~/.shortcuts/gitlog.sh
	ln -sf $(CURDIR)/gitpullrebase.sh ~/.shortcuts/gitpullrebase.sh
	ln -sf $(CURDIR)/gitpush.sh ~/.shortcuts/gitpush.sh
	ln -sf $(CURDIR)/gitresethard.sh ~/.shortcuts/gitresethard.sh
	ln -sf $(CURDIR)/gitresetpick.sh ~/.shortcuts/gitresetpick.sh
	ln -sf $(CURDIR)/gitrestorepick.sh ~/.shortcuts/gitrestorepick.sh
	ln -sf $(CURDIR)/gitstatus.sh ~/.shortcuts/gitstatus.sh
	@echo "✅ Done"

# aliases to speed up typing on small phone keyboard
# that dont have completion
#
.PHONY: cl
cl: create_links ## Alias for create_links

rsf: recreate_shortcuts_folder ## Alias for recreate_shortcuts_folder

