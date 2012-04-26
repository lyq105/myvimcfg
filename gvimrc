"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim ÔÚwindowsÏÂµÄ±àÂëÉèÖÃ¡£date
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1
set fileencoding=utf-8

"½â¾ö²Ëµ¥ÂÒÂë
"source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/menu.vim
"½â¾öconsoleÊä³öÂÒÂë
language messages zh_CN.utf-8

set rtp+=~/.vim/bundle/The-NERD-tree/

filetype off
filetype plugin indent off
syn off
set nocp
"call pathogen#infect()

syn on
set nu
set go=''
"set go+=m
set nobackup
"set guifont=Monaco:h11
set guifont=Monospace\ 11
"set guifontwide=Yahei_Mono:h11
set tabstop=2
set shiftwidth=2
set completeopt=menu

"au GUIEnter * simalt ~x
map <C-F10> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR> 

"colo morning
"colo darkblue
"colo torte
"colo slate 
colo evening 

"" Diff option
set dip=vertical

""" Setting of Plugins
filetype on
filetype plugin indent on

"" Setting of NEARDTree plugin.
nnoremap <silent> <F11> <ESC>:NERDTreeToggle<CR>

"" Setting of the TagList plugin.
nnoremap <silent> <C-F8> :TlistToggle<CR>

"" Setting of Ctags key binding.
nnoremap <silent> <C-F12> <ESC>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

"" Setting of OminiCpp plugin
let OminiCpp_GlobalScopeSearch=1
let OminiCpp_DisplayMode=1
let OminiCpp_ShowAccess =1
let OminiCpp_DefaultNamespaces=["std"]
let OmniCpp_ShowScopeInAbbr = 0

set tags+=~/.tags
set tags+=./tags

"" Setting of VimWiki plugin

let g:vimwiki_list = [{'path': 'F:\liyiqiang\kb\wiki\wiki_text', 
											\ 'path_html': 'F:\liyiqiang\kb\wiki\wiki_html/',
											\ 'diary_rel_path': 'wiki_note/',
											\ 'auto_export':0,
											\ 'html_header': 'F:\liyiqiang\kb\wiki\tpl\head.tpl',
											\ 'html_footer': 'F:\liyiqiang\kb\wiki\tpl\footer.tpl'}]
"" Display vimwiki or not.
let g:vimwiki_menu=''
let g:vimwiki_use_mouse = 1 
let g:vimwiki_camel_case = 0
let g:vimwiki_CJK_length = 1
nnoremap <leader>tt <Plug>VimwikiToggleListItem


"" Setting of Calendar Plugin

nnoremap <silent> <F12> <ESC>:Calendar<CR>

"" Setting of snipMate Plugin

ino <C-Tab> <c-r>=TriggerSnippet()<cr>
snor <C-Tab> <esc>i<right><c-r>=TriggerSnippet()<cr>

"" Setting of LaTeX Suite

let g:tex_flavor='latex'
"""" Forword Search
let g:Tex_CompileRule_dvi = 'latex -src-specials -synctex=-1 -interaction=nonstopmode $*'
let g:Tex_CompileRule_pdf = 'dvipdfmx $*.dvi'
let g:Tex_FormatDependency_pdf = 'dvi,pdf'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_ViewRule_pdf = 'SumatraPDF -reuse-instance -inverse-search "gvim -c \":RemoteOpen +\%l \%f\""'

au BufNewFile,BufRead *.asy	setf asy
"" Setting of folding 
set fdc=1

"" Setting of neocomplcache

let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_max_list = 10

"" Setting of python  
"""" Setting of pydoc
let g:pydoc_cmd = "E:\\Python26\\Lib\\pydoc.py"

au BufNewFile,BufRead	*.py	setf python
autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType python compiler pylint
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone

let g:pyflakes_use_quickfix = 0

"" Setting of APDL
au BufNewFile,BufRead	*.ans	setf apdl

"" Setting of zencoding
let g:user_zen_leader_key = '<c-y>'

"" Setting of Gundo
nnoremap <C-F5> :GundoToggle<CR>

let g:gundo_width = 10
let g:gundo_preview_height = 5
let g:gundo_right = 0
let g:gundo_preview_bottom = 1

set laststatus=1
set statusline=%<%F\ %h%m%r%=%-14.(%l,%c%V%)%P%=%{fugitive#statusline()}
