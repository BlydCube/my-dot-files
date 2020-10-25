let mapleader = ","
syntax on

set number

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
	let g:airline#extensions#tabline#enabled = 1
Plug 'arcticicestudio/nord-vim'

Plug 'morhetz/gruvbox'

Plug 'ervandew/supertab'

Plug 'sirver/UltiSnips'
	let g:UltiSnipsExpandTrigger = '<tab>'
	let g:UltiSnipsJumpForwardTrigger = '<tab>'
    	let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

Plug 'lervag/vimtex'
    let g:tex_flavor='latex'
    let g:vimtex_view_method='zathura'
    let g:vimtex_quickfix_mode=0

Plug 'preservim/nerdtree'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-T> :NERDTreeToggle<CR>

Plug 'KeitaNakamura/tex-conceal.vim'
    set conceallevel=1
    let g:tex_conceal='abdmg'
    hi Conceal ctermbg=none

Plug 'junegunn/vim-easy-align'

Plug 'dracula/vim',{ 'as': 'dracula' }

Plug 'LukeSmithxyz/vimling'

call plug#end()

nm <leader><leader>d :call ToggleDeadKeys()<CR>
nm <F9> :w<CR>:!python3 %<CR>
set spell
set spelllang=en
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
set background=dark
colorscheme nord
