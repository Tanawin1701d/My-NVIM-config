source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/barbar.vim
source $HOME/.config/nvim/plug-config/fold.vim
source $HOME/.config/nvim/plug-config/treesitter.vim
:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set noswapfile
:set background=dark
:set termguicolors
:set sidescroll=1
:set nowrap
call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
" Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'} "auto complete
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} "synhighlight 
Plug 'NLKNguyen/papercolor-theme' " papercolor
Plug 'tomasiser/vim-code-dark'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim' "ripgrep require
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'pseewald/vim-anyfold' " folding
Plug 'mbbill/undotree'
Plug 'Pocco81/AutoSave.nvim' "auto saving
set encoding=UTF-8

call plug#end()


colorscheme codedark


nmap <F8> :TagbarToggle<CR>
nnoremap <F5> :UndotreeToggle<CR>
nmap <space>t <cmd>TerminalSplit bash<CR>
nmap <space>e <Cmd>CocCommand explorer<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fs <cmd>Telescope grep_string<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" for treesiter
lua << EOF
	require'nvim-treesitter.configs'.setup {
	  -- One of "all", "maintained" (parsers with maintainers), or a list of languages
	  ensure_installed = "maintained",
	
	  -- Install languages synchronously (only applied to `ensure_installed`)
	  sync_install = false,
	
	  -- List of parsers to ignore installing
	  ignore_install = {},
	
	  highlight = {
	    -- `false` will disable the whole extension
	    enable = true,
	
	    -- list of language that will be disabled
	    disable = {},
	
	    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
	    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
	    -- Using this option may slow down your editor, and you may see some duplicate highlights.
	    -- Instead of true it can also be a list of languages
	    additional_vim_regex_highlighting = true,
	  },
	}
	
   	require('telescope').setup{
      defaults = {
        -- Default configuration for telescope goes here:
        -- config_key = value,
        mappings = {
          i = {
            -- map actions.which_key to <C-h> (default: <C-/>)
            -- actions.which_key shows the mappings for your picker,
            -- e.g. git_{create, delete, ...}_branch for the git_branches picker
            ["<C-h>"] = "which_key"
          }
        }
      },
      pickers = {
        -- Default configuration for builtin pickers goes here:
        -- picker_name = {
        --   picker_config_key = value,
        --   ...
        -- }
        -- Now the picker_config_key will be applied every time you call this
        -- builtin picker
      },
      extensions = {
        -- Your extension configuration goes here:
        -- extension_name = {
        --   extension_config_key = value,
        -- }
        -- please take a look at the readme of the extension you want to configure
      }
    }
    

EOF

"
" for auto saving
lua << EOF
local autosave = require("autosave")

autosave.setup(
    {
        enabled = true,
        execution_message = "AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"),
        events = {"InsertLeave", "TextChanged"},
        conditions = {
            exists = true,
            filename_is_not = {},
            filetype_is_not = {},
            modifiable = true
        },
        write_all_buffers = false,
        on_off_commands = true,
        clean_command_line_interval = 0,
        debounce_delay = 135
    }
)
EOF







