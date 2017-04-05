"set exrc
set secure
"set colorcolumn=110
set number
set laststatus=2
set showtabline=2
set noshowmode
set autoindent
filetype on
syntax on

"source ~/.vim/after/syntax/cpp.vim

autocmd BufRead,BufNewFile *.h,*.c,*.cpp highlight ColorColumn ctermbg=7
autocmd FileType python nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>


let g:powerline_pycmd = "py3"
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

noremap ; l
noremap l k
noremap k j
noremap j h

set mouse=a

function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>
