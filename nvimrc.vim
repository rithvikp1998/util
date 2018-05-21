let vimDir = '$HOME/.config/nvim'

if empty(glob(vimDir . '/autoload/plug.vim'))
    execute "!curl -fLo " . vimDir . "/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
endif

call plug#begin(vimDir . '/plugged')

Plug 'sickill/vim-monokai'
Plug 'ErichDonGubler/vim-sublime-monokai'

call plug#end()

syntax on
colorscheme sublimemonokai
set termguicolors
