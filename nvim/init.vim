call plug#begin('~/.config/nvim/plugged')

	Plug 'chrisbra/Colorizer'
	Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
  let g:airline_theme='wombat'
	Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-abolish'
	Plug 'tpope/vim-ragtag'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-sleuth'
    Plug 'sickill/vim-pasta'
	Plug 'ryanoasis/vim-devicons'
	Plug 'junegunn/fzf.vim'
	Plug 'gregsexton/MatchTag', { 'for': 'html' }
	Plug 'MaxMEllon/vim-jsx-pretty'
	let g:vim_jsx_pretty_highlight_close_tag = 1
	Plug 'leafgarland/typescript-vim', { 'for': ['typescript', 'typescript.tsx'] }
	Plug 'wavded/vim-stylus', { 'for': ['stylus', 'markdown'] }
	Plug 'groenewege/vim-less', { 'for': 'less' }
	Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
	Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
	Plug 'stephenway/postcss.vim', { 'for': 'css' }
	Plug 'elzr/vim-json', { 'for': 'json' }
	let g:vim_json_syntax_conceal = 0
	Plug 'ekalinin/Dockerfile.vim'


 " coc {{{
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	let g:coc_global_extensions = [
	\ 'coc-css',
	\ 'coc-json',
	\ 'coc-tsserver',
	\ 'coc-git',
	\ 'coc-eslint',
	\ 'coc-tslint-plugin',
	\ 'coc-pairs',
	\ 'coc-sh',
	\ 'coc-vimlsp',
	\ 'coc-emmet',
	\ 'coc-prettier',
	\ 'coc-ultisnips',
	\ 'coc-explorer',
	\ 'coc-diagnostic',
	\ 'coc-highlight'
	\ ]

	autocmd CursorHold * silent call CocActionAsync('highlight')

	" coc-prettier
	command! -nargs=0 Prettier :CocCommand prettier.formatFile
	nmap <leader>f :CocCommand prettier.formatFile<cr>

	" coc-git
	nmap [g <Plug>(coc-git-prevchunk)
	nmap ]g <Plug>(coc-git-nextchunk)
	nmap gs <Plug>(coc-git-chunkinfo)
	nmap gu :CocCommand git.chunkUndo<cr>

	nmap <silent> <leader>k :CocCommand explorer<cr>

	"remap keys for gotos
	nmap <silent> gd <Plug>(coc-definition)
	nmap <silent> gy <Plug>(coc-type-definition)
	nmap <silent> gi <Plug>(coc-implementation)
	nmap <silent> gr <Plug>(coc-references)
	nmap <silent> gh <Plug>(coc-doHover)

	" diagnostics navigation
	nmap <silent> [c <Plug>(coc-diagnostic-prev)
	nmap <silent> ]c <Plug>(coc-diagnostic-next)

	" rename
	nmap <silent> <leader>c <Plug>(coc-rename)

	" Remap for format selected region
	xmap <leader>f  <Plug>(coc-format-selected)
	nmap <leader>f  <Plug>(coc-format-selected)

	" organize imports
	command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')


	" Startify: Fancy startup screen for vim {{{
	Plug 'mhinz/vim-startify'

	" Don't change to directory when selecting a file
	let g:startify_files_number = 5
	let g:startify_change_to_dir = 0
	let g:startify_custom_header = [ ]
	let g:startify_relative_path = 1
	let g:startify_use_env = 1

	" Custom startup list, only show MRU from current directory/project
	let g:startify_lists = [
	\  { 'type': 'dir',       'header': [ 'Files '. getcwd() ] },
	\  { 'type': function('helpers#startify#listcommits'), 'header': [ 'Recent Commits' ] },
	\  { 'type': 'sessions',  'header': [ 'Sessions' ]       },
	\  { 'type': 'bookmarks', 'header': [ 'Bookmarks' ]      },
	\  { 'type': 'commands',  'header': [ 'Commands' ]       },
	\ ]

	let g:startify_commands = [
	\   { 'up': [ 'Update Plugins', ':PlugUpdate' ] },
	\   { 'ug': [ 'Upgrade Plugin Manager', ':PlugUpgrade' ] },
	\   { 'uc': [ 'Update CoC Plugins', ':CocUpdate' ] },
	\ ]

	let g:startify_bookmarks = [
		\ { 'c': '~/.config/nvim/init.vim' },
		\ { 'g': '~/.gitconfig' },
		\ { 'z': '~/.zshrc' }
	\ ]

	autocmd User Startified setlocal cursorline
	nmap <leader>st :Startify<cr>
    " }}}

	" Keybinds
	nmap <C-b> :NERDTreeToggle<CR>

	" Abbreviations
	abbr funciton function
	abbr teh the
	abbr tempalte template
	abbr fitler filter
	abbr cosnt const
	abbr attribtue attribute
	abbr attribuet attribute

	set autoread " detect when a file is changed

	" WARNING: These settings disable vim's backups (swap files).
	" If this is not desired, comment these lines out.
	set nobackup " don't use backup files
	set nowritebackup " don't backup the file while editing
	set noswapfile " Don't create swapfiles for new buffers
	set updatecount=0 " don't try to write swap files after some number of updates

  " Tabbing
	set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
	set tabstop=4 " the visible width of tabs
	set softtabstop=4 " edit as if the tabs are 4 characters wide
	set shiftwidth=4 " number of spaces to use for indent and unindent
	set shiftround " round indent to a multiple of 'shiftwidth'

	" new line without insert mode
	nmap <S-Enter> O<Esc>
	nmap <CR> o<Esc>

	set history=1000 " store the last 1000 command-lines entered
	set textwidth=120
	set backspace=indent,eol,start " make backspace behave in a sane manner
	if (has('nvim'))
	" show results of substition as they're happening
	" but don't open a split
		set inccommand=nosplit
	endif

	" Searching
	set ignorecase " case insensitive searching
	set smartcase " case-sensitive if expresson contains a capital letter
	set hlsearch " highlight search results
	set incsearch " set incremental search, like modern browsers
	set nolazyredraw " don't redraw while executing macrosv

	set magic " Set magic on, for regex

	" error bells
	set noerrorbells
	set visualbell
	set t_vb=
	set tm=500

	set number " show line numbers
	set wrap " turn on line wrapping
	set wrapmargin=8 " wrap lines when coming within n characters from side
	set linebreak " set soft wrapping
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

	" code folding settings
    set foldmethod=syntax " fold based on indent
    set foldlevelstart=99
    set foldnestmax=10 " deepest fold is 10 levels
    set nofoldenable " don't fold by default
    set foldlevel=1

    " toggle invisible characters
    set list
    set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮

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

    " highlight conflicts
    match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'
    " keep visual selection when indenting/outdenting
    vmap < <gv
    vmap > >gv

    " enable . command in visual mode
    vnoremap . :normal .<cr>

    Plug 'dracula/vim', {'as':'dracula'}

call plug#end()

colorscheme dracula
