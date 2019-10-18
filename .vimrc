" plugins vplug
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'vim-airline/vim-airline'

Plug 'morhetz/gruvbox'

call plug#end()

" variables
set number
set numberwidth=6

" gruvbox
colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark = 'hard'

" transparent background
highlight Normal ctermbg=None

map <C-b> :NERDTreeToggle<CR>
