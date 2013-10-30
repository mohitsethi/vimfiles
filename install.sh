cd ~/.vim_runtime

echo 'set runtimepath+=~/.vim_runtime

try
source ~/.vim_runtime/vimrcs/basic.vim
catch
endtry' > ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
