" Pathogen plugin manager config
execute pathogen#infect()
syntax on
filetype plugin indent on

set tabstop=4 softtabstop=4 expandtab shiftwidth=4 smarttab

"set background=dark
colorscheme colorful

" mango.vim config
"set t_Co=256
"color mango

" vim-go snippets
let g:go_fmt_command = "goimports"

" vim-go beautify it
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1

" ale
let g:ale_fix_on_save = 1
highlight ALEWarning ctermbg=DarkGray
highlight ALEError ctermbg=DarkGray

" ejs syntax highlighting
au BufNewFile,BufRead *.ejs set filetype=html

" mac os clipboard
set clipboard=unnamed
