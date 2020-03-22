#~ /bin/bash
git clone https://github.com/vimwiki/vimwiki.git ~/.vim/pack/plugins/start/vimwiki
git clone https://github.com/joshdick/onedark.vim.git ~/.vim/pack/plugins/onedark
cp ~/.vim/pack/plugins/onedark/colors/onedark.vim ~/.vim/colors/
cp ~/.vim/pack/plugins/onedark/autoload/onedark.vim ~/.vim/autoload/ 
git clone https://github.com/vim-syntastic/syntastic.git ~/.vim/pack/plugins/start/syntastic
git clone https://github.com/itchyny/lightline.vim ~/.vim/pack/plugins/start/lightline
mkdir -p ~/.vim/pack/default/start
git clone https://github.com/sheerun/vim-polyglot ~/.vim/pack/default/start/vim-polyglot
