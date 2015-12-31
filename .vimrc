filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

set encoding=utf-8
set background=dark

"let Vundle manage Vundle (required!)
Plugin 'VundleVim/Vundle.vim'
"Disabled Plugins
"Plugin 'shinzui/vim-idleFingers'
"Plugin 'msanders/snipmate.vim'

Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-afterimage'
Plugin 'vim-scripts/pep8'
Plugin 'reinh/vim-makegreen'
Plugin 'sjl/gundo.vim'
"Plugin 'fs111/pydoc.vim'
Plugin 'mileszs/ack.vim'
Plugin 'less.vim'
Plugin 'tpope/vim-speeddating'
Plugin 'bling/vim-airline'
"Plugin 'Shougo/neocomplcache'
Plugin 'scrooloose/syntastic'
Plugin 'skammer/vim-css-color'

let g:airline_powerline_fonts=1
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'luna'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

"supertab omnicomplete options
Plugin 'ervandew/supertab'
set completeopt=menu,menuone,longest,preview
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = '&omnifunc'
let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
let g:SuperTabContextDiscoverDiscovery = ["&omnifunc:<c-x><c-o>", "&completefunc<c-x><c-n>"]

"Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'Raimondi/delimitMate'
Plugin 'docunext/closetag.vim'
"Plugin 'kevinw/pyflakes-vim'

Plugin 'thinca/vim-ft-diff_fold'
Plugin 'vim-scripts/vcscommand.vim'
Plugin 'vim-scripts/TaskList.vim'
Plugin 'alfredodeza/pytest.vim'
Plugin 'vim-scripts/The-NERD-tree.git'
Plugin 'chrisbra/color_highlight'

" enhance 256 color support for gvim themes
"Plugin 'colorsupport.vim'
"let g:colorsupport_rgb = '/etc/X11'
Plugin 'vim-scripts/Zenburn'
Plugin 'vim-scripts/Rainbow-Parenthesis'

syntax on
"remap leader from \ to ,
let mapleader = ","
set title "update title of command prompt

"don't beep
set visualbell noerrorbells

set fileformats=unix,dos,mac

"add more levels of undo tracking
set history=1000
set undolevels=1000
set udf
set undodir=~/.vim/undo

"ignore the following filetypes from wildmenu completion
set wildignore=*.swp,*.bak,*.pyc,*.class,*.o,*.so,*.dylib

"sane console: xterm, 256 color support
behave xterm

colors zenburn

iab teh the
iab Teh The

"insert new lines in normal mode with enter and shift enter
"nnoremap <silent> <S-ENTER> O<ESC>j
"nnoremap <silent> <CR> o<Esc>k

"make backspace work reliably
set backspace=indent,eol,start
set lazyredraw
"hide --INSERT-- and other modes from being displayed
set noshowmode
set sidescroll=2
set scrolloff=8
set sidescrolloff=15
set laststatus=2
"don't jump to first character when paging
set nostartofline
"mouse copy and paste
"set mouse=a

"highlight current line and column
set cuc cul 
"enable spelling correction
set spell 
setlocal spell spelllang=en_us
"show all special characters
set list

"Tabbing selected section
vmap <Tab> >gv
vmap <S-Tab> <gv

"transparent background
highlight Normal ctermbg=None

"highlight trailing whitespace
highlight WhitespaceEOL ctermbg=Red guibg=Red
match WhitespaceEOL /\s\+$\| \+\ze\t/
"/\s\+$/

"Control+c = Esc so InsertLeave is called properly
inoremap <silent> <C-C> <Esc>

"show some special characters (trailing space)
"set listchars=tab:>.,trail:.,extends:#,nbsp:.
" Display tabs and trailing spaces visually
" set list listchars=tab:\ \ ,trail:·
set list listchars=tab:▸\ ,trail:·,eol:¬,extends:»,precedes:«
"use spaces instead of tabs
set shiftwidth=4
set softtabstop=4
set expandtab smarttab
"set writeany autowrite
"incremental, highlighted search, showing matches
set incsearch hlsearch showmatch
"manage multiple buffers
set hidden
"stifle some prompts
set shortmess=atI

"eliminate a bit of per-directory backup mess, storing temp files together
"in a standard location
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
"set noswapfile
"set nobackup
set writebackup

"scroll the viewport faster, keeping your cursor where it is,
"until it has been scrolled past
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

"Show wrap at word boundaries and preface wrap with >>
set linebreak
set showbreak=>>
"Make preview (and all other) splits appear at the bottom
set splitbelow

set ignorecase smartcase

set wildmenu        "autocomplete menu
"set statusline=%<\ %n:%f\ %m%r%y%=%(%l,%c%V\ \ \ \ \ \ \ \ \ %P:%L%)
set cpoptions+=$    "append $ to element being changed

filetype indent on
filetype plugin on
filetype plugin indent on

"support saving files as root
function! Sudowrite()
   :silent :w !sudo tee %
endfunction
"force quit since we already saved as root
command WQ execute Sudowrite() | :q!
"force reload after saving as root
command W execute Sudowrite() | :e!

" clean trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" hardwrap a paragraph
nnoremap <leader>q gqip

"set user execute privileges- I had an autocmd for this, but I couldn't get it
"to stop conflicting with the put cursor on last position when opening file autocmd

function! Chmodfile(su)
   if a:su == 1
     :!sudo chmod u+x %
   else
     :silent !chmod u+x %
   endif
   :e!
   :redraw!
endfunction
command Wx execute Chmodfile(0)
command WX execute Chmodfile(1)

au filetype python set expandtab
"au filetype html,xml set listchars-=tab:>.

au BufNewFile,BufRead *.todo setf todo
au BufNewFile,BufRead *.out setf todo
au BufNewFile,BufRead *.psl setf pslang
au BufNewFile,BufRead *.pslog setf pslog
au BufNewFile,BufRead *.kvg setf kvg 
au BufNewFile,BufRead /tmp/user/[0-9]*/textui.[0-9]* setf ticket
au BufNewFile,BufRead CHANGELOG setf ticket
au BufNewFile,BufRead CHANGELOG.* setf ticket

"enable rainbow parenthesis
au Syntax * source ~/.vim/bundle/Rainbow-Parenthesis/syntax/RainbowParenthsis.vim

"put cursor at last position when opening file
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\   exe "normal! g`\""|
\ endif

set pastetoggle=<F2>

"number lines relative to current position
set relativenumber
nnoremap <F3> <Esc>:set norelativenumber!<CR>:set nopaste!<CR>:set foldcolumn=0<CR>
imap <F3> <Esc>:set norelativenumber!<CR>:set nopaste!<CR>:set foldcolumn=0<CR>

"don't require shift for command entry
nnoremap ; :
"double ;; = :!
nnoremap ;; :!

"simplify paragraph formatting
vmap Q gq
nmap Q gqap

"Disable paste mode when leaving insert mode
au InsertLeave * set nopaste

"control x to close the current split
map <C-x> :close<cr>

"Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l


"Conque Shell: terminal emulator in vim buffer
function! RunConque()
   if $SHELL == '/bin/zsh'
      ConqueTermSplit zsh
   else
      ConqueTermSplit bash
   endif
endfunction
nmap <silent> <leader>c :execute RunConque()<CR>

" ,v - split vertically
nnoremap <silent> ,v :vsplit<CR>

" ,s - split horizontally
nnoremap <silent> ,s :split<CR>

"automatic renumbering based on mode
silent! autocmd InsertEnter * :set number
silent! autocmd InsertLeave * :set relativenumber

nmap <silent> ,/ :nohlsearch<CR>
nmap <silent> <leader>l :set nolist!<CR>
"reload vimrc file with ,V
nmap <silent> <leader>V :source ~/.vimrc<CR>
map <leader>tl <Plug>TaskList
map <leader>g :GundoToggle<CR>
map <leader><leader><leader> :q!<CR>
map <leader>T :TagbarToggle<CR>
let g:tagbar_iconchars = ['▾', '▸']

if has("gui_running")
   set guifont=Monaco\ for\ Powerline\ 14
   "set guifont=Inconsolata\ 14
   if has("mac")
      "grow to max horiz width on fullscreen mode on MacVIM
      set fuopt+=maxhorz
      nnoremap <silent> <SwipeLeft> :macaction _cycleWindowsBackwards:<CR>
      nnoremap <silent> <SwipeRight> :macaction _cycleWindows:<CR>
   endif
   "Hide icons
   set go-=T
   set go-=r
   set go-=R
   set go-=l
   set go-=L
   set go-=b
endif

imap jj <Esc>
vmap <space>jj <Esc>
imap jf <C-m>

nnoremap ; :

set wildmode=list:longest

set foldmethod=indent
set foldlevel=99


"Indent XML readably
function! DoPrettyXML()
        1,$!xmllint --format --recover -
endfunction
command! PrettyXML call DoPrettyXML()

let g:pep8_map='<leader>8' 

map <leader>n :NERDTreeToggle<CR>
nmap <leader>a <Esc>:Ack!

"handle attempts to quit in a less annoying fashion
"without removing access to q:
"map q:: q:<CR>
"map q;; q:<CR>
"map q; :q
"map q: :q

if &diff
"easily handle diffing using < and > keys
   vnoremap < :diffget<CR>
   vnoremap > :diffput<CR>
endif

"Move in file
nnoremap -0 <C-o>
nnoremap -= <C-i>

"Switch files
"nmap ^ <C-^>
nmap <A-Left> :bp<CR>
nmap <A-Right> :bn<CR>

"Ctrl+Shift+PgUp/Dn - Move between files
nnoremap <C-S-PageDown> :next<CR>
nnoremap <C-S-PageUp> :prev<CR>
"Ctrl+PgUp/Dn - Move between quickfix marks
nnoremap <C-PageDown> :cnext<CR>
nnoremap <C-PageUp> :cprev<CR>
"Alt+PgUp/Dn - Move between location window marks
nnoremap <A-PageDown> :lnext<CR>
nnoremap <A-PageUp> :lprev<CR>

"reload current file
nnoremap <S-space> :e<CR>

"toggle folds open and closed
nnoremap <C-space> za

let python_highlight_all = 1


"set command entry higher
"set cmdheight=2
set cmdheight=1

autocmd InsertLeave * highlight CursorLine guibg=#4f4f4f
autocmd InsertEnter * highlight CursorLine guibg=#5f5f5f
" CursorLine guibg=#4f4f4f

" highlight trailing whitespace
autocmd VimEnter,BufRead,BufNewFile * highlight Whitespace ctermbg=236 guibg=#333333
autocmd VimEnter,BufRead,BufNewFile * match Whitespace /\s\+$/
autocmd FileType conque_term match none

" window titles
set title

if $STY
   set titlestring=%t\ %m
else
   "set titlestring=%r%m\ %t\ \[%{substitute(expand('%:p:h'),\ $HOME,\ '~',\ 'g')}\]\ -\ %{v:servername}
endif

" diffing ignoring trailing whitespace
set diffopt+=iwhite

" prevent fatfinger from bring up :help
inoremap <F1> <Esc>
vnoremap <F1> <Esc>
nnoremap <F1> <Esc>
noremap <F1> <Esc>

"only show red bar in column 80 in insert mode
autocmd InsertEnter * set colorcolumn=80
autocmd InsertLeave * set colorcolumn=""

"ignore wrapping lines when moving
noremap j gj
noremap k gk

" scroll in insert mode
inoremap <C-e> <C-o><C-e>
inoremap <C-y> <C-o><C-y>

runtime ftplugin/man.vim
nmap K :Man <cword><CR>

"fix problems with the vertical bar not showing
"when using different fonts
set fillchars+=vert:┃,fold:─,diff:─

if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

"use system clipboard
set clipboard=unnamed
