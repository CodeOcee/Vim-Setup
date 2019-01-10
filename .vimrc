"/**************************************************************************************
"* Vundle Plugin Manager
"**************************************************************************************/

set nocompatible              			" be improved, required.
filetype off                  			" required.

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'dracula/vim'
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Yggdroot/indentLine'
"Plugin 'mattn/emmet-vim'
Plugin 'posva/vim-vue'
Plugin 'https://github.com/Nopik/vim-nerdtree-direnter.git'
Plugin 'https://github.com/terryma/vim-multiple-cursors.git'

call vundle#end()            			" required.
filetype plugin indent on    			" required.

"/**************************************************************************************
"* OCee Settings
"**************************************************************************************/
set t_Co=256                              " Enable 256 colors.
syntax on				                	        " Enable color highligting.
color dracula					                    " Set color theme.
set clipboard=unnamed                     " Use os clibboard.
set laststatus=2				                  " Show status line.
set number					                      " Show line numbers.
set cursorline                            " Highlight current line.
set showmatch                             " Highlight matching [{()}].
set shiftwidth=2 				                  " Number of spaces when shift indenting.
set tabstop=2 				          	        " Number of visual spaces per tab.
set softtabstop=2 				                " Number of spaces in tab when editing.
set expandtab 					                  " Tab to spaces.
set hlsearch					                    " Highlight searched text.
set incsearch					                    " Go throgue searched text.
set nowrap					                      " No line break for long line.
set splitbelow					                  " Split window to below.
set splitright					                  " Split window to right.
set noswapfile                            " Not create swap files.
set directory^=$HOME/.vim/tmp//           " Set swap file saving path.
let NERDTreeShowHidden=1			            " Show hidden files on NERDTree.
let NERDTreeMapOpenInTab='<ENTER>'        " Open file in new tab
let g:ctrlp_show_hidden=1                 " Show hidden files on CtrlP.
let g:indentLine_color_term = 7           " Set yellow to indentLine color.
let g:ctrlp_working_path_mode = 'ra'      

"/**************************************************************************************
"* Mappings
"**************************************************************************************/
nnoremap <Up> :echomsg "Up k" <cr>
nnoremap <Down> :echomsg "Down j" <cr>
nnoremap <Left> :echomsg "Left h" <cr>
nnoremap <Right> :echomsg "Right l" <cr>

nmap <Leader>ev :tabe $MYVIMRC<cr>
nmap <Leader><space> :nohlsearch<cr>
nmap <C-\> :NERDTreeToggle<cr>
nmap <Leader>pr :CtrlPBufTag<cr>
nmap <Leader>pm :CtrlPMRUFile<cr>
nmap <Leader>f :tag<space>

"/**************************************************************************************
"* Split-Management
"**************************************************************************************/

" Go to Down Window.
nmap <C-J> <C-W><C-J>

" Go to Up Window.
nmap <C-k> <C-W><C-K>

" Go to Left Window.
nmap <C-H> <C-W><C-H>

" Go to Right Window.
nmap <C-L> <C-W><C-L> 

"/*************************************************************************************
"* Auto-Commands
"*************************************************************************************/"
"autocmd vimenter * NERDTree            " Open NERDTree when vim start
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source % 	" Automatically source vimrc file on save.
augroup END

