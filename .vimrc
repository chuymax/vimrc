""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" INSTALL PLUGINS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible                  " be iMproved, required
filetype off                      " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Plugin installation
Plugin 'ctrlpvim/ctrlp.vim'       " Fuzzy file, buffer, mru, tag, etc finder
Plugin 'bling/vim-airline'        " lean & mean status/tabline for vim that's light as air
Plugin 'fholgado/minibufexpl.vim' " Elegant buffer explorer - takes very little screen space
Plugin 'scrooloose/nerdtree'      " A tree explorer plugin for vim
Plugin 'vim-scripts/bufkill.vim'  " Unload buffer, keep its window.
Plugin 'majutsushi/tagbar'        " Vim plugin that displays tags in a window ordered by scope
Plugin 'a.vim'                    " Alternate Files quickly
Plugin 'haya14busa/incsearch.vim' " Improved incremental searching for Vim

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CONFIGURE PLUGINS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"S MiniBufExpl
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
"E MiniBufExpl

" Plugin configuration
set laststatus=2                  " Show Vim airline status line
"autocmd vimenter * NERDTree       " Show NERDTree at startup
let NERDTreeQuitOnOpen = 0        " Do not quit NERDTree on file open

" Toggle TagBar
nmap <F8> :TagbarToggle<CR>
nmap <F7> :NERDTreeToggle<CR>

" Incsearch.vim enable, and do nohlsearch automatically.
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" :h g:incsearch#auto_nohlsearch
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" Do not mess the paths
let g:ctrlp_working_path_mode = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SET OPTIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup                      " Remove annoying temp files.
set noswapfile                    " Remove annoying temp files.
:syntax on                        " Enable syntax highlighting
set number                        " Add line number
set tw=80                         " Wrap at 80 chars
set colorcolumn=80                " Set ruler at column 80
set guifont=Courier_New:h14:cANSI 
set wildchar=<Tab> wildmenu wildmode=full " Auto completion for buffer list 
set nowrap
set guioptions+=b                 " Adds a horizontal scroll bar
set cscopequickfix=s-,c-,d-,i-,t-,e- " Quick fix for cscope

" Show whitespace, except eol (eol:$ is default)
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list

" No tabs for indentation
set expandtab
set shiftwidth=2
set softtabstop=2

set tabstop=4

set incsearch                     " Start searching before pressing enter
set hlsearch                      " Highlights all occurrences of search pattern
" Note, using :noh clears search highlight
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" List buffers and change to buffer with F5 key
:nnoremap <F5> :buffers<CR>:buffer<Space>

" Close buffer (bufkill)
:nnoremap <F4> :BD<CR>

" Buffer switching
map <C-Tab> :bn<cr>
map <C-S-Tab> :bp<cr>

" Scroll horizontally
map <C-L> 20zl
map <C-H> 20zh

" XML Lint formatting
map <C-S-X> % !xmllint.exe "%" --format

