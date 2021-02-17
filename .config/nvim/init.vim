call plug#begin()
Plug 'vimwiki/vimwiki', {'branch': 'dev'}
Plug 'editorconfig/editorconfig-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'OmniSharp/omnisharp-vim'
call plug#end()

source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim


" vscode
if exists('g:vscode')
    source $HOME/.config/nvim/vscode/settings.vim
endif


"Use markdown syntax instead of vimwiki syntax
"let g:vimwiki_list = [{'path': '~/git-enviroment/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
"let g:vimwiki_markdown_link_ext = 1
"au BufRead,BufNewFile *.md set filetype=vimwiki
"autocmd BufRead,BufNewFile *.wiki setlocal spell

filetype plugin on
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

