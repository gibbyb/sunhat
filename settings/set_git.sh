# Set common git aliases
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global pull.rebase true

# Set git editor and user
git config --global core.editor "nvim"
git config --global user.name $GH_USERNAME
git config --global user.email $GH_EMAIL

# Sign in to GitHub
gh auth login
