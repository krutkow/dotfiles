" Kristin Rutkowski
" .vimrc
" 20171227

" adapted from: 
"   vim.wikia.com/wiki/Example_vimrc
"   https://github.com/Areustle/dotfiles/blob/master/vim/.vimrc

" currently on:
"   my macbook
"   660 machines
"   nicer machine - my acct
"   nicer machine - dtsops acct




set nocompatible

" ----------------------------------------
" ---- editor display ---- 

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" display syntax highlighting
syntax on

" display line numbers on the left
set number

" :colo
"koehler or murphy or slate or torte
colorscheme murphy

" 
set background=dark

" highlight current line
set cursorline
"hi CursorLine cterm=NONE ctermbg=darkgray guibg=darkgray

" highlight current column
set cursorcolumn
hi cursorcolumn cterm=NONE ctermbg=darkgray guibg=darkgray

" highlight column 80 dark gray instead of pink
set colorcolumn=80
highlight ColorColumn ctermbg=darkgray

" ----------------------------------------
" ---- status line ---- 

" Show partial commands in the last line of the screen
set showcmd

" Display the cursor position in the status line
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" add extra info to status line +++ finish this
" http://vimdoc.sourceforge.net/htmldoc/options.html#'statusline'
" http://got-ravings.blogspot.com/2008/08/vim-pr0n-making-statuslines-that-own.html
" http://learnvimscriptthehardway.stevelosh.com/chapters/17.html
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

" ----------------------------------------
" ---- searching ---- 

" sets incremental search, to highlight words as you type into search
set incsearch

" highlights all occurrences of string
set hlsearch

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" always keep some lines of context around the cursor 
" (helpful when search puts the cursor at the top of the window and I'm not 
"  sure where I am in the code)
set scrolloff=2

" turn off search highlight: mapped to ,<space>.
"nnoremap <Leader><space> :noh<CR>

" turn off highlighting after a search
"map ,, :nohl

" press return to temporarily get out of the highlighted search.
"nnoremap <CR> :nohlsearch<CR><CR>

" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>


" ----------------------------------------
" ---- misc ---- 

" instead of failing a command because of unsaved changes, instead
" raise a dialog asking if you wish to save changed files
set confirm

" allow backspace to delete work when editing
set backspace=indent,eol,start

" Enable use of the mouse for all modes
set mouse=a

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>



" ----------------------------------------
" ---- tabs ---- 

" set tab size when looking in vi
set tabstop=2

" an indent will correspond to a single tab
set shiftwidth=2

" expand tabs to spaces
set expandtab

" tab key will go to next level of indentation
set smarttab

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on.
set autoindent

" if using actual tab character in source code, probably also want: 
" (these are actually the defaults, but may want to set them defensively)
" set softtabstop=0 noexpandtab




