let mapleader = ","
syntax on

set number

call plug#begin('~/.vim/plugged')

Plug 'hugolgst/vimsence'
	let g:vimsence_client_id = '439476230543245312'
	let g:vimsence_small_text = 'NeoVim'
	let g:vimsence_small_image = 'neovim'
	let g:vimsence_editing_details = 'Editing: {}'
	let g:vimsence_editing_state = 'Working on: {}'
	let g:vimsence_file_explorer_text = 'In NERDTree'
	let g:vimsence_file_explorer_details = 'Looking for files'
	let g:vimsence_custom_icons = {'filetype': 'iconname'}

function! BuildComposer(info)
  if a:info.status != 'unchanged' || a:info.force
    if has('nvim')
      !cargo build --release --locked
    else
      !cargo build --release --locked --no-default-features --features json-rpc
    endif
  endif
endfunction

Plug 'euclio/vim-markdown-composer',{ 'do': function('BuildComposer') }
	let g:markdown_composer_autostart = 1

Plug 'aurieh/discord.nvim'


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

Plug 'ycm-core/YouCompleteMe'

Plug 'vim-scripts/vim-auto-save'
	let g:auto_save_no_updatetime = 1  
	let g:auto_save_in_insert_mode = 0 

Plug 'flazz/vim-colorschemes'

Plug 'vim-airline/vim-airline-themes'

" Plug 'eagletmt/neco-ghc'

" Plug 'eagletmt/ghcmod-vim'

Plug 'Shougo/vimproc.vim', {'do' : 'make'}

Plug 'mhinz/vim-startify'

call plug#end()


nmap ga <Plug>(EasyAlign)
nm <leader><leader>d :call ToggleDeadKeys()<CR>
nm <F9> :w<CR>:!python3 %<CR>
set spell
set spelllang=en
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
set background=dark
colorscheme gruvbox
