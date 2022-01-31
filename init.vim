set autoindent
set noexpandtab
set tabstop=2
set shiftwidth=2
set clipboard=unnamedplus
set ignorecase
set mouse=a
set smartindent
set relativenumber
set cursorline


if (has("nvim"))
	let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
	set termguicolors
endif


let g:numbers_exclude = ['unite', 'tagbar', 'startify', 'gundo', 'vimshell', 'w3m', 'NvimTree', 'Telescope']

let path = '~/.config/nvim/config/'
exec 'source' path . 'plugins.vim'
exec 'source' path . 'mappings.vim'

lua require('init')
lua vim.notify = require("notify")


syntax on
colorscheme base16-material-darker
hi LineNr guifg=#4a4a4a

set completeopt=menuone,noselect


