SYNC_NEOVIM	= cp -r ~/.config/nvim/* neovim/
SYNC_ZSH = cp ~/.zshrc zsh/

sync-to-repo:
	$(SYNC_NEOVIM)
	$(SYNC_ZSH)
	git add neovim/ zsh/
	git commit -m "zsh and neovim config sync"
	git push

sync-from-repo:
	cp neovim/* ~/.config/nvim/
	cp zsh/* ~/.zshrc/
