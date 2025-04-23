syntax on                                     " enable syntax highlighting
set number                                    " show line numbers
set tabstop=2                                 " set tab width to 2 spaces
set shiftwidth=2                              " set indentation width to 2 spaces
set softtabstop=2 
set smarttab
set expandtab                                 " use spaces instead of tabs
set autoindent
set smartindent
set formatoptions+=cro
set cursorline                                " highlight the current line
set relativenumber                            " show relative numbers
set mouse=a                                   " Enable mouse mode

set cursorline
highlight LineNr guifg=#5c6370                " Line numbers (grayish)
highlight CursorLineNr guifg=#ffcc66

set termguicolors                             " setting modern colors
highlight Normal guibg=#1e1e1e guifg=#d4d4d4  " Background and default text color
highlight Comment guifg=#6a9955 gui=italic    " Comments (grayish)
highlight Keyword guifg=#c678dd               " Keywords (purple)
highlight Function guifg=#61afef              " Functions (blue)
highlight String guifg=#98c379                " Strings (green)
highlight Identifier guifg=#ffffff            " Variables (white)
highlight Constant guifg=#d19a66              " Constants (orange)
highlight Operator guifg=#f92672              " Operators (pinkish)
highlight CursorLine guibg=#333333            " Cursor line highlighting

" Transparency
"highlight Normal guibg=NONE ctermbg=NONE

" Bold and Italics
highlight Comment gui=italic
highlight Function gui=bold

" Enable omni completion for HTML, JavaScript, and CSS
filetype plugin on
filetype indent on
" Set up auto-completion key bindings
autocmd FileType html setlocal omnifunc=htmlcomplete#Complete
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#Complete
autocmd FileType css setlocal omnifunc=csscomplete#Complete
" Map <Ctrl-Space> to trigger omni-completion
imap <C-Space> <C-X><C-O>

" Open Netrw like a sidebar with -
nnoremap - :Vexplore<CR>
" Open netrw at Vim start if started without a file
autocmd VimEnter * if argc() == 0 | Explore | endif
" Netrw appearance
let g:netrw_banner = 0 " no banner at the top
let g:netrw_liststyle = 3 " tree-style listing
let g:netrw_browse_split = 4 " open files in previously opened window
"let g:netrw_altv = 1 " open file to the right of netrw
let g:netrw_winsize = 25 " sidebar width 25 column in vertical split or 25 rows in horizontal split
