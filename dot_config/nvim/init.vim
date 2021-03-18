"" {{ Plugins
call plug#begin(stdpath('data') . '/plugged')

" airline
Plug 'vim-airline/vim-airline'

" colorscheme
Plug 'arcticicestudio/nord-vim'

" editorconfig
Plug 'editorconfig/editorconfig-vim'

call plug#end()
"" }}

"" {{ Theme
colorscheme nord
let g:airline_theme='nord'
let g:airline_powerline_fonts = 1
"" }}

