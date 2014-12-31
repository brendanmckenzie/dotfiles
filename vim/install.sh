if [ -f ~/.vim/bundle/Vundle.vim ] ; then
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

mv ~/.vimrc ~/vimrc.bak
ln -s $PWD/vimrc ~/.vimrc
