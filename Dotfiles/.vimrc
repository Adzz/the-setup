
"My Vimrc
"----------
"Leader is the space bar
let mapleader = "\<Space>"

"SHORTCUTS
"----------

                                  "Open nerd tree:
nmap <leader>d :NERDTreeToggle<CR>
                                  "Sets 0 as line begining:
nmap 0 ^
                                  "Open vimrc in new buffer split:
nmap <leader>vr :sp $MYVIMRC<CR>
                                  "Source vimrc:
nmap <leader>so :source $MYVIMRC<CR>
                                  "Save :
nmap <leader>s :w<CR>
                                  "Quit without saving:
nmap <leader>qn :q!<CR>
                                  "Quit :
nmap <leader>q :q<CR>
                                  "Move up and down a visual line when text is wrapped, rather than by line number
nmap k gk
nmap j gj
"Run rspec quickly from vim:
nmap <leader><right><left> :!rspec<CR>


"BASIC USE SETTINGS
"------------------

set timeoutlen=420             "Timeout length between commands
set mouse =a                   "Enables mouse use in all modes. Wont copy line numbers when copying from vim
set ignorecase                 "Makes searches case insensitive by default. Put \C anywhere in the search to make it case sensitve.
set smartcase                  "Smart case sensitivity. The 'smartcase' option only applies to search patterns that you type; it does not apply to * or # or gd. Will make a case sensitive search if you use an upper case letter, otherwise it will not be.
set backspace=2                "Same as :set backspace=indent,eol,start. Make backspace work like most other apps. Hitting backspace usually deletes what has been inserted in the current insert mode and on the current line. Using the default backspace option also leaves the old characters on the screen and they won't disappear until you exit back to normal mode.
set autoindent                 "Copy indent from current line when starting a new line.

"DISPLAY SETINGS
"---------------

syntax on                      "Allow syntax highlighting, used to be set to enable, not sure how enable differs.
filetype plugin indent on      "Detect filetype, set the approppriate indent for the filetype, and allow filetype specific plugins
colorscheme triplejelly        "Color scheme
set relativenumber            "Sets line numbers relative to the cursor position
set number                     "Show line numbers when combined with above shows rel line numbers and the absolute number of the line you are on.
set cursorline                 "Highlight the line the cursor is on 
set scrolloff=4                "4 lines above/below cursor when scrolling
set colorcolumn=81             "Colours the 81st column in to look like two pages. Not sure why
set wrap                       "Should wrap lines visually
set expandtab                  "Convert <tab> to spaces (2 or 4)
set showmatch                  "Show matching bracket (briefly jump)
set matchtime=2                "Show matching bracket for 0.2 seconds
set matchpairs+=<:>            "Specially for html
set noshowmode                 "hides current mode from the status bar
set wildmenu                   "Allows autocomplete on vim commands.
set wildmode=longest,list,full "First tab completes longest common string, then second tab will complete to first full match and open the wildmenu.
set laststatus=2               "The value of this option influences when the last window will have a status line. 0  = never, 1 = only if there are t least 2 windows, 2 = always.
let &t_SI = "\<Esc>]50;CursorShape=1\x7"   "Changes cursor shape in different modes. Works for iterm2 on OSX
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

"TAB SETTINGS
"------------

set tabstop=2                  "Two space tab as default
set shiftwidth=2               "Control how many columns text is indented with the reindent operations >>
set softtabstop=2              "How many columns vim uses when you hit Tab in insert mode

"COPYING AND PASTING
"----------------

set pastetoggle=<C-p>          "Sets ctrl + p to enter paste mode, allows unmodified pasting from other applications
set clipboard=unnamed          "Use system clipboard
                               "Below, non recursively maps ctrl + p to changing paste mode.
nnoremap <C-p> :set invpaste paste?<CR>

