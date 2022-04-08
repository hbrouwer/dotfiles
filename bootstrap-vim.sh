mkdir -p ~/.vim
mkdir -p ~/.vim/autoload
curl -fLo ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir -p ~/.vim/.undo
mkdir -p ~/.vim/.backup
mkdir -p ~/.vim/.swp
cp .vimrc ~/.vimrc
vim -c ":PlugInstall|:qa"
