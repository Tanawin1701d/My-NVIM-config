# My NVIM plugin configuration
## credit: for plugin sugestion and some code!
- NeuralNine : https://www.youtube.com/watch?v=JWReY93Vl6g&t=1294s
- Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
- Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
- Plug 'https://github.com/vim-airline/vim-airline' " Status bar
- Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
- Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
- Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'} "auto complete
- Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
- Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
- Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
- Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
- Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
- Plug 'https://github.com/nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} "synhighlight 
- Plug 'https://github.com/NLKNguyen/papercolor-theme' " papercolor
- Plug 'https://github.com/tomasiser/vim-code-dark'
- Plug 'https://github.com/kyazdani42/nvim-web-devicons'
- Plug 'https://github.com/romgrk/barbar.nvim'
- Plug 'https://github.com/nvim-lua/plenary.nvim'
- Plug 'https://github.com/nvim-telescope/telescope.nvim' "ripgrep require
- Plug 'https://github.com/junegunn/fzf', { 'do': { -> fzf#install() } }
- Plug 'https://github.com/junegunn/fzf.vim'
- Plug 'https://github.com/pseewald/vim-anyfold' " folding
- Plug 'https://github.com/mbbill/undotree'
- Plug 'https://github.com/Pocco81/AutoSave.nvim' "auto saving
- 

## prerequisite
- neovim >= 0.5  ([WARNING] In ubuntu repo provides neovim 0.4. Please add ppa repo )
- nodejs >= 12.0  ([WARNING] In ubuntu repo provides nodejs10. Please add ppa repo )
- yarn
- ripgrep


## Installation
1. install vimplug following these instruction. https://github.com/junegunn/vim-plug
2. copy all files from this repository to 
``` ~/.config/nvim ``` and install nerd font.
3. comment all lines in ```init.vim``` except line 5 -> 46
4. use ``` :PlugInstall``` command inside nvim which is opened init.vim
5. use command ``` npm install -i``` in side ```~/.local/share/nvim/plugged/coc.nvim ``` folder
6. use command ``` yarn install``` in side ```~/.local/share/nvim/plugged/coc.nvim ``` folder
7. uncomment all in ``` init.vim``` then write and quit
8. open nvim and use these command to setup  your coc
 -``` :CocInstall coc-clangd coc-pyright coc-explorer```
9. write and quit
## Tip
1. use ```<ctrl> + l``` to jump to the definition. thank NeuralNine
2. use ``` z + M``` to fold all class and functions
3. use ``` z + R``` to unfold all class and functions
4. use  ``` <spacebar> + e``` to open coc-explorer
5. use  ```<F5>``` to open undo tree
6. use  ```<F8>``` to open tagbar
7. all other shortcut in this configuration are set to default keys.