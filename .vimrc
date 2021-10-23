" ativar sintaxe colorida
syntax on

" ativar indentação automática
set autoindent

" ativa indentação inteligente, o Vim tentará adivinhar
" qual é a melhor indentação para o código quando você
" efetuar quebra de linha. Funciona bem para linguagem C
set smartindent

" ativar numeração de linha
set number

" destaca a linha em que o cursor está posicionado
set cursorline

" ativa o clique do mouse para navegação pelos documentos
set mouse=a

" ativa o compartilhamento de área de transferência entre o Vim
" e a interface gráfica
set clipboard=unnamedplus

" converte o tab em espaços em branco
" ao teclar tab o Vim irá substutuir por 2 espaços
set tabstop=2 softtabstop=2 expandtab shiftwidth=2

" ao teclar a barra de espaço no modo normal, o Vim
" irá colapsar ou expandir o bloco de código do cursor
" foldlevel é a partir de que nível de indentação o
" código iniciará colapsado
set foldmethod=syntax
set foldlevel=99
nnoremap <space> za

" Disable vi compatibility
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Vim Airlines (barra de status e buffer)
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"Syntastic
Plugin 'Syntastic'

" IndentLine (linhas no \t)
Plugin 'Yggdroot/indentLine'

" Vim rainbow
Plugin 'frazrepo/vim-rainbow'

"Auto pairs
Plugin 'jiangmiao/auto-pairs'

" NERDtree (gerenciador de arquivos)
Plugin 'preservim/nerdtree'

" Vim-markdown (preview de texto em markdown)
Plugin 'iamcco/mathjax-support-for-mkdp'
Plugin 'iamcco/markdown-preview.vim'

" Pywal theme
Plugin 'dylanaraps/wal.vim'

" Emmet (Ctrl+y+, para deixar a linha selecionada entre tags) Domine o Emmet
" quando for aprender HTML5
Plugin 'mattn/emmet-vim'

" NERDcommenter (comentar linhas de código)
Plugin 'preservim/nerdcommenter'

" Vim devicons (ícones para o VIM)
Plugin 'ryanoasis/vim-devicons'

" ALE (correção de código)
Plugin 'dense-analysis/ale'

call vundle#end()
filetype plugin indent on

" Vim Rainbow Active
let g:rainbow_active = 1

" MarkdownPreviewBrowser
let g:mkdp_browser = 'firefox'
let g:airline#extensions#tabline#enabled = 1

" (CTRL-N) open nerd tree
map <C-n> :NERDTreeToggle<cr>
set encoding=utf8

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_statusline_ontop=0
let g:airline_theme='minimalist'

let g:airline#extensions#tabline#formatter = 'default'
" navegação entre os buffers
nnoremap <M-Right> :bn<cr>
nnoremap <M-Left> :bp<cr>
nnoremap <c-x> :bp\|bd #<cr>

" IndentLine config (Ctrl+k+i para ativar/desativar)
let g:indentLine_enabled = 1
map <c-k>i :IndentLinesToggle<cr>

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" NERDcommenter config
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
map cc <Plug>NERDCommenterInvert

set guifont=Anonymice\ Nerd\ Font:h12
filetype plugin on
