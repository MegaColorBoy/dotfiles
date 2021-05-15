syntax enable
colorscheme elflord
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set number
set showmatch
set wildmenu
set t_Co=256
set nocompatible
set autoindent

let g:dfm_width = 80 
let g:dfm_height = 0.8
let s:dfm_enabled = 0

function! ToggleDistractionFreeMode()
  let l:w = g:dfm_width > 1 ? g:dfm_width : (winwidth('%') * g:dfm_width)
  let l:margins = {
    \ "l": ("silent leftabove " . float2nr((winwidth('%') - l:w) / 2 - 1) . " vsplit new"),
    \ "h": ("silent rightbelow " . float2nr((winwidth('%') - l:w) / 2 - 1) . " vsplit new"),
    \ "j": ("silent leftabove " . float2nr(winheight('%') * (1 - g:dfm_height) / 2 - 1) . " split new"),
    \ "k": ("silent rightbelow " . float2nr(winheight('%') * (1 - g:dfm_height) / 2 - 1) . " split new"),
    \ }
  if (s:dfm_enabled == 0)
    let s:dfm_enabled = 1
    hi Normal ctermbg=black
    for key in keys(l:margins)
      execute l:margins[key] . " | wincmd " . key
    endfor
    for key in ['NonText', 'VertSplit', 'StatusLine', 'StatusLineNC']
      execute 'hi ' . key . ' ctermfg=bg ctermbg=bg cterm=NONE'
    endfor
    set wrap | set linebreak
    map j gj
    map k gk
  else
    let s:dfm_enabled = 0
    for key in keys(l:margins)
      execute "wincmd " . key . " | close "
    endfor
    set nowrap | set nolinebreak
    unmap j
    unmap k
  endif
endfunction

nmap <silent> <Leader>z :call ToggleDistractionFreeMode()<CR>

let g:user_emmet_leader_key=','

inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap {<CR> {<CR>}<Esc>0
inoremap [ []<Esc>i
inoremap < <><Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i

