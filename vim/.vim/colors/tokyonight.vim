" === Tokyo Night Inspired Colorscheme ===
set background=dark
highlight clear
syntax reset

" Transparency
"highlight Normal guibg=NONE ctermbg=NONE

" Basic UI
highlight Normal       guifg=#c0caf5 guibg=#1a1b26
highlight LineNr       guifg=#3b4261 guibg=#1a1b26
highlight CursorLineNr guifg=#7aa2f7 guibg=#1a1b26 gui=bold

" Cursor line fix
highlight CursorLine   guibg=#2a2e3f guifg=NONE

" Comments — readable even on CursorLine
highlight Comment      guifg=#5c6370 gui=italic

" Status and menus
highlight StatusLine   guifg=#c0caf5 guibg=#1f2335
highlight Pmenu        guifg=#c0caf5 guibg=#1f2335
highlight PmenuSel     guifg=#1a1b26 guibg=#7aa2f7

" Syntax
highlight Keyword      guifg=#7dcfff gui=bold
highlight Identifier   guifg=#bb9af7
highlight String       guifg=#9ece6a
highlight Number       guifg=#ff9e64
highlight Function     guifg=#7aa2f7 gui=bold
highlight Type         guifg=#2ac3de
highlight Constant     guifg=#ff9e64
highlight Statement    guifg=#bb9af7

" Visual mode
highlight Visual       guibg=#283457

" Search
highlight Search       guibg=#33467C guifg=#c0caf5
highlight IncSearch    guibg=#ff9e64 guifg=#1a1b26

" Diagnostics (for future LSP support)
highlight Error        guifg=#f7768e guibg=NONE
highlight WarningMsg   guifg=#e0af68
highlight Todo         guifg=#e0af68 guibg=#1f2335 gui=bold

" Define color highlights for the status line sections
highlight Directory ctermfg=White guifg=#ffffff
highlight FileIcon ctermfg=Yellow guifg=#f1fa8c
highlight StatusLine ctermfg=Blue guifg=#82aaff
highlight Normal ctermfg=White guifg=#ffffff


" === Netrw Appearance Tweaks ===
highlight netrwDir       guifg=#7aa2f7 gui=bold
highlight netrwClassify  guifg=#ff9e64
highlight netrwLink      guifg=#9ece6a
highlight netrwSymLink   guifg=#9ece6a
highlight netrwExe       guifg=#7dcfff
highlight netrwComment   guifg=#5c6370
highlight netrwList      guifg=#c0caf5
highlight netrwHelpCmd   guifg=#bb9af7
highlight netrwCmdSep    guifg=#3b4261
highlight netrwVersion   guifg=#444b6a
