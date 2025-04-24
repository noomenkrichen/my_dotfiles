" Set leader key
let mapleader = " "
let maplocalleader = " "

syntax on                                                 " enable syntax highlighting
set confirm
set number                                              " show line numbers
set relativenumber                            " show relative numbers
set tabstop=2                                         " set tab width to 2 spaces
set shiftwidth=2                                    " set indentation width to 2 spaces
set softtabstop=2
set smarttab
set expandtab                                         " use spaces instead of tabs
set autoindent
set smartindent
set formatoptions+=cro
set cursorline                                " highlight the current line
set mouse=a " Enable mouse mode
set breakindent " Enable break indent
set undofile " Save undo history
set ignorecase " Case-insensitive searching unless \C or capital in search
set smartcase " Enable smart case
set signcolumn=yes " Keep signcolumn on by default
set updatetime=250 " Decrease update time
set timeoutlen=300 " Time to wait for a mapped sequence to complete (in milliseconds)
set splitbelow " Horizontal splits below current window
"set splitright " Vertical splits to the right
"set showmatch " show the matching part of pairs [] {} and ()
set cursorline
set noshowmode
set laststatus=2 " Show status bar
set statusline=%#StatusLine#
set statusline+=\ %{ModeName()}
set statusline+=\ \ %F
set statusline+=%=%#StatusLine#
set statusline+=\ %{FileIcon()}\ %{&filetype}\ %{&fileencoding}\[%{&fileformat}]\ %{FileSize()}
set statusline+=\ %p%%\ %l:%c

" Colorsheme
set termguicolors
colorscheme tokyonight

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
"nnoremap - :Vexplore<CR>
"nnoremap <leader>e :Vexplore<CR>
"nnoremap <leader>e :echo "  Opening file explorer..." \| :Explore<CR>
"nnoremap <leader>f :echo "  Search Files..."<CR>
nnoremap <leader>s :w \| echo "💾 File Saved!"<CR>
nnoremap <leader>t :terminal<CR>

" window management
nnoremap <leader>v <C-w>v
nnoremap <leader>h <C-w>s
nnoremap <leader>se <C-w>=
nnoremap <leader>xs :close<CR>

" Navigate between splits
nnoremap <C-k> :wincmd k<CR>
nnoremap <C-j> :wincmd j<CR>
nnoremap <C-h> :wincmd h<CR>
nnoremap <C-l> :wincmd l<CR>

" Netrw appearance
let g:netrw_banner = 0 " no banner at the top
let g:netrw_liststyle = 3 " tree-style listing
let g:netrw_browse_split = 4 " open files in previously opened window
"let g:netrw_altv = 1 " open file to the right of netrw
let g:netrw_winsize = 25 " sidebar width 25 column in vertical split or 25 rows in horizontal split

" Toggle Netrw open/close like a sidebar
function! ToggleNetrw()
  if exists("t:netrw_bufnr") && bufwinnr(t:netrw_bufnr) != -1
    exec bufwinnr(t:netrw_bufnr) . "close"
  else
    Vexplore
    let t:netrw_bufnr = bufnr("%")
  endif
endfunction

nnoremap <leader>e :call ToggleNetrw()<CR>

" Return file icon
" Alternative 'javascript':'',
function! FileIcon()
  let l:icons = {
        \'c':'',
        \'sh':'',
        \'go':'',
        \'lua':'',
        \'cpp':'',
        \'vim':'',
        \'java':'',
        \'text':'',
        \'python':'',
        \'javascript':'',
        \'typescript':'',
        \'typescriptreact':'',
        \'javascriptreact':'',
        \'git':'',
        \'gitignore':'',
        \'css':'',
        \'html':'',
        \'json':'',
        \'conf':'',
        \'markdown':'',
        \}
  let l:ft = &filetype
  return get(l:icons, l:ft, '') " default icon if not found
endfunction

" Return file size
function! FileSize()
  let l:size = getfsize(expand('%'))
  if l:size < 0
    return ''
  elseif l:size < 1024
    return l:size . 'B'
  elseif l:size < 1024*1024
    return printf('%.1fKiB', l:size / 1024.0)
  elseif l:size < 1024*1024*1024
    return printf('%.1fMiB', l:size / 1024.0 / 1024.0)
  else
    return printf('%.1fGiB', l:size / 1024.0 / 1024.0 / 1024.0)
  endif
endfunction

" Return the current vim mode
function! ModeName()
  let l:m = mode()
  return l:m ==# 'n' ? 'Normal' :
        \ l:m ==# 'i' ? 'Insert' :
        \ l:m ==# 'v' ? 'Visual' :
        \ l:m ==# 'V' ? 'V-Line' :
        \ l:m ==# '' ? 'V-Block' :
        \ l:m ==# 'R' ? 'Replace' :
        \ l:m ==# 'c' ? 'Command' :
        \ l:
endfunction
