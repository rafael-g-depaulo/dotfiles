# get names of all folders in dotfiles
DOTFILE_PACKAGES=$(ls -d */)

for PACKAGE in $DOTFILE_PACKAGES; do
	stow -t $HOME $PACKAGE -v $@
done
