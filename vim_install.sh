#! /bin/bash
mkdir bundle
cd bundle

# general
git clone https://github.com/mileszs/ack.vim.git
git clone https://github.com/jiangmiao/auto-pairs.git
git clone https://github.com/chriskempson/base16-vim.git
git clone https://github.com/kien/ctrlp.vim.git
git clone https://github.com/FelikZ/ctrlp-py-matcher.git
git clone https://github.com/scrooloose/nerdcommenter.git
git clone https://github.com/ervandew/supertab.git
git clone https://github.com/scrooloose/syntastic.git
git clone https://github.com/edkolev/tmuxline.vim.git
git clone https://github.com/SirVer/ultisnips.git
git clone https://github.com/bling/vim-airline
git clone https://github.com/vim-airline/vim-airline-themes.git
git clone https://github.com/tpope/vim-fugitive.git
git clone https://github.com/honza/vim-snippets.git
git clone https://github.com/vimwiki/vimwiki.git

# language specific
git clone https://github.com/mxw/vim-jsx.git
git clone https://github.com/flowtype/vim-flow.git
git clone https://github.com/reedes/vim-pencil.git
git clone https://github.com/digitaltoad/vim-pug.git
git clone https://github.com/derekwyatt/vim-scala.git
git clone https://github.com/othree/yajs.vim.git

# syntax
git clone https://github.com/Shutnik/jshint2.vim.git

echo "Packages cloned. Symlinking ~/.vim/ and ~/.vimrc."
read -p "This will overwrite existing vim config. \
Do you want to continue? (y/n) " -n 1 -r
echo # newline

if [[ $REPLY =~ ^[yY]$ ]]
then
  cd ..
  ln -s $PWD/.vimrc ~/.vimrc
  ln -s $PWD ~/.vim
  echo "Symlinked ~/.vim/ and ~/.vimrc"
fi
