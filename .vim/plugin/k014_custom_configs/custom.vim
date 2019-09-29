set nocompatible

colorscheme dracula

set incsearch              " While typing a search, show where the pattern matches
set ignorecase             " Ignoring case in a pattern:
set hlsearch               " Highlights all the search pattern matches:
set smartcase              " While typing a search, show where the pattern matches:

set showmatch              " Show matching braces when cursor is over them:
set number relativenumber  " Display the relative line number
set showmode               " Always show the mode
set showcmd                " Display incomplete commands
set incsearch              " Do incremental searching (as you type)
set hlsearch               " Highlight the latest search pattern
set laststatus=2           " Always show a status line
set cursorline             " Highlight the screen line of the cursor:

set splitbelow             " Creates new horizontal windows at the bottom:
set splitright             " Creates new vertical windows at the right:

set termguicolors          " It makes iTerm2 to show colors correctly

set expandtab
set shiftwidth=2

set wildmode=list:longest,full
set wildmenu

set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
set list

set backspace=indent,eol,start

"https://evertpot.com/osx-tmux-vim-copy-paste-clipboard/
set clipboard=unnamed

"folding options
set foldmethod=indent
set foldminlines=2
set nofoldenable

" better vertial movement for wrapped lines
nnoremap j gj
nnoremap k gk

autocmd FileType * setlocal formatoptions-=cro
