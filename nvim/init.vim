call plug#begin('~/.config/nvim/plugged')
  Plug 'chrisbra/Colorizer'
  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
  Plug 'Xuyuanp/nerdtree-git-plugin'
    let g:NERDTreeIndicatorMapCustom = {
      \ "Modified"  : "✹",
      \ "Staged"    : "✚",
      \ "Untracked" : "✭",
      \ "Renamed"   : "➜",
      \ "Unmerged"  : "═",
      \ "Deleted"   : "",
      \ "Dirty"     : "✗",
      \ "Clean"     : "✔︎",
      \ 'Ignored'   : '☒',
      \ "Unknown"   : "?"
      \ }
  Plug 'airblade/vim-gitgutter'
    set signcolumn=yes
    let g:gitgutter_sign_added = '✚'
    let g:gitgutter_sign_modified = '✹'
    let g:gitgutter_sign_removed = '-'
    let g:gitgutter_sign_removed_first_line = '-'
    let g:gitgutter_sign_modified_removed = '-'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
    let g:airline_theme='dracula'
    let g:airline#extensions#tabline#enabled = 1
    let g:airline_powerline_fonts = 1
    let g:airline#extensions#tabline#buffer_nr_show = 1
    let g:airline#extensions#tabline#formatter = 'unique_tail'
  Plug 'https://github.com/tpope/vim-fugitive.git'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-abolish'
  Plug 'tpope/vim-ragtag'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-sleuth'
  Plug 'sickill/vim-pasta'
  Plug 'ryanoasis/vim-devicons'
  Plug 'pangloss/vim-javascript'
  Plug 'gregsexton/MatchTag', { 'for': 'html' }
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'wavded/vim-stylus', { 'for': ['stylus', 'markdown'] }
  Plug 'groenewege/vim-less', { 'for': 'less' }
  Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
  Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
  Plug 'stephenway/postcss.vim', { 'for': 'css' }
  Plug 'elzr/vim-json', { 'for': 'json' }
    let g:vim_json_syntax_conceal = 0
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'ekalinin/Dockerfile.vim'
  Plug 'ctrlpvim/ctrlp.vim'
    let g:ctrlp_custom_ignore = 'coverage'
    let g:ctrlp_buffer_func = { 'enter': 'CtrlPMappings' }
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'neoclide/coc-lists'
    let g:coc_global_extensions = [
      \ 'coc-tsserver'
      \ ]
    if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
      let g:coc_global_extensions += ['coc-eslint']
    endif
    let g:coc_node_path = '~/.nvm/versions/node/v12.12.0/bin/node'
  Plug 'dracula/vim', {'as':'dracula'}
call plug#end()

" Sets Dracula as Theme, this needs to be after plug#end
colorscheme dracula

" SETs
"########################
set autoread " detect when a file is changed

" error bells
set noerrorbells
set visualbell
set t_vb=
set tm=500
set number " show line numbers
set wrap " turn on line wrapping
set wrapmargin=8 " wrap lines when coming within n characters from side
set linebreak " set soft wrapping

" code folding settings
set foldmethod=syntax " fold based on indent
set foldlevelstart=99
set foldnestmax=10 " deepest fold is 10 levels
set nofoldenable " don't fold by default
set foldlevel=1

" Tabbing
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4 " the visible width of tabs
set softtabstop=4 " edit as if the tabs are 4 characters wide
set shiftwidth=4 " number of spaces to use for indent and unindent
set shiftround " round indent to a multiple of 'shiftwidth'


set history=1000 " store the last 1000 command-lines entered
set textwidth=120
set backspace=indent,eol,start " make backspace behave in a sane manner
if (has('nvim'))
  " show results of substition as they're happening
  " but don't open a split
	set inccommand=nosplit
endif

" Searching
" set ignorecase " case insensitive searching
" set smartcase " case-sensitive if expresson contains a capital letter
set hlsearch " highlight search results
set incsearch " set incremental search, like modern browsers
set nolazyredraw " don't redraw while executing macrosv

set magic " Set magic on, for regex

set autoindent " automatically set indent of new line
set ttyfast " faster redrawing
set diffopt+=vertical,iwhite,internal,algorithm:patience,hiddenoff
set laststatus=2 " show the status line all the time
set so=7 " set 7 lines to the cursors - when moving vertical
set wildmenu " enhanced command line completion
set hidden " current buffer can be put into background
set showcmd " show incomplete commands
set noshowmode " don't show which mode disabled for PowerLine
set wildmode=list:longest " complete files like a shell
set shell=$SHELL
set cmdheight=1 " command bar height
set title " set terminal title
set showmatch " show matching braces
set mat=2 " how many tenths of a second to blink
set updatetime=300
set signcolumn=yes
set shortmess-=S " Show [X/X] search results

" toggle invisible characters
set list
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮

" Always ignore these folder paths
set wildignore+=*/node_modules/*

set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors
" switch cursor to line when in insert mode, and block when not
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
\,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
\,sm:block-blinkwait175-blinkoff150-blinkon175

if &term =~ '256color'
    " disable background color erase
    set t_ut=''
endif

" enable 24 bit color support if supported
if (has("termguicolors"))
    if (!(has("nvim")))
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    endif
    set termguicolors
endif


" Remove NetRW from opening with new vim window
let loaded_netrwPlugin = 1
"
"
" Key Binds
" ########################
" Interactive mode remap jk to ESC 
inoremap jk <ESC>
"
" Toggles NERDTree
nnoremap <C-b> :NERDTreeToggle<CR>
"
" COC Keybinds
inoremap <silent><expr> <c-space> coc#refresh()
nmap <leader>do <Plug>(coc-codeaction)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <leader>rn <Plug>(coc-rename)

" Remaps Leader (normally \) -> Space
map <Space> <Leader>

" Buffer Switching
noremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>

" Buffer Current Close
nmap <C-w> :bd<CR>
" Buffer close all
nmap <leader-w> :BufOnly<CR>

" new line without insert mode
nmap <S-Enter> O<Esc>
nmap <Enter> O<Esc>
"
" keep visual selection when indenting/outdenting
vmap < <gv
vmap > >gv

" enable . command in visual mode
vnoremap . :normal .<cr>

" Abbreviations
" ########################
abbr funciton function
abbr teh the
abbr tempalte template
abbr fitler filter
abbr cosnt const
abbr attribtue attribute
abbr attribuet attribute

" Matching
" ########################
" highlight conflicts
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" Custom Commands
" ########################

" Replaces all but first 'pick' with 'squash' for rebasing
command ReplacePick 2,$s/pick/squash


" BufOnly.vim  -  Delete all the buffers except the current/named buffer.
" Copyright November 2003 by Christian J. Robinson <infynity@onewest.net>
" Distributed under the terms of the Vim license.  See ":help license".
" Usage:
" :Bonly / :BOnly / :Bufonly / :BufOnly [buffer] 
" Without any arguments the current buffer is kept.  With an argument the
" buffer name/number supplied is kept.
command! -nargs=? -complete=buffer -bang Bonly
    \ :call BufOnly('<args>', '<bang>')
command! -nargs=? -complete=buffer -bang BOnly
    \ :call BufOnly('<args>', '<bang>')
command! -nargs=? -complete=buffer -bang Bufonly
    \ :call BufOnly('<args>', '<bang>')
command! -nargs=? -complete=buffer -bang BufOnly
    \ :call BufOnly('<args>', '<bang>')
function! BufOnly(buffer, bang)
	if a:buffer == ''
		" No buffer provided, use the current buffer.
		let buffer = bufnr('%')
	elseif (a:buffer + 0) > 0
		" A buffer number was provided.
		let buffer = bufnr(a:buffer + 0)
	else
		" A buffer name was provided.
		let buffer = bufnr(a:buffer)
	endif

	if buffer == -1
		echohl ErrorMsg
		echomsg "No matching buffer for" a:buffer
		echohl None
		return
	endif

	let last_buffer = bufnr('$')

	let delete_count = 0
	let n = 1
	while n <= last_buffer
		if n != buffer && buflisted(n)
			if a:bang == '' && getbufvar(n, '&modified')
				echohl ErrorMsg
				echomsg 'No write since last change for buffer'
							\ n '(add ! to override)'
				echohl None
			else
				silent exe 'bdel' . a:bang . ' ' . n
				if ! buflisted(n)
					let delete_count = delete_count+1
				endif
			endif
		endif
		let n = n+1
	endwhile

	if delete_count == 1
		echomsg delete_count "buffer deleted"
	elseif delete_count > 1
		echomsg delete_count "buffers deleted"
	endif

endfunction

" Autocmds
" ########################
autocmd VimEnter * NERDTree " Opens NERDTree when vim opens
autocmd VimEnter * wincmd p " focuses editor, not nerdtree, on open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " if all buffers are closed, exit vim
