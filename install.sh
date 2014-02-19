cd ~/.vim_runtime
echo '
source ~/.vim_runtime/vimrcs/basic.vim
' > ~/.vimrc
echo "Configuring vim using Vundle..."
vim +BundleInstall! +BundleClean +qa
echo "Installed the Basic Vim configuration successfully! Enjoy :-)"
