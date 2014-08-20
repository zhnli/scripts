" " Plugins
" " Useful : a.vim, bufexplorer.vim, conque_term.vim,
"            cscope_maps.vim, grep.vim
" " Maybe  : fugitive.vim, taglist.vim, winfileexplorer.vim,
"            winmanager.vim, wintagexplorer.vim

" " needed for omnicppcomplete
"set nocp
"filetype plugin on

" " set tab space
"set tabstop=4
set softtabstop=4

" " set shift width
set shiftwidth=4

" " convert tab to spaces
set expandtab

" " indent
"set cindent
set smartindent

" " show special char
" set nolist
set list

" " show filename at bottom
set ls=2

" " disable modeline parsing
set modelines=0
set nomodeline

" " turn on syntax
syntax on

" " Use mouse
set mouse=ni

" " Use 256 colors
set t_Co=256

" " Set hightlight color
:hi search ctermbg=LightBlue

":colo pablo
":colo desert
":colo darkspectrum
":colorscheme molokai-zhen

:helptags ~/.vim/doc

" " In text files, always limit the width of text to 78 characters
"autocmd BufRead *.txt set tw=78

"set tw=79
set wrap

" " Auto change the vim working directory to that of the current buffer
set autochdir

" " Disable auto commenting
"autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
comm! -nargs=? -bang AutoCommentOff setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" " winmanager.vim setting
let g:winManagerWindowLayout = 'FileExplorer,TagsExplorer|BufExplorer'
" " let g:winManagerWindowLayout = 'FileExplorer'
map <c-w><c-b> :BottomExplorerWindow<cr>
map <c-w><c-f> :FirstExplorerWindow<cr>
map <c-w><c-t> :WMToggle<cr>

" " Grep.vim setting
let Grep_Skip_Dirs   = '.svn'
let Grep_Skip_Files  = '*.bak *~ *.o *.swp'
let Grep_Default_Options = '-i' 
":let Grep_Default_Filelist = '*.[chS]'
":let Grep_Default_Filelist = '*.c *.cpp *.asm' 
map <c-s><c-g> :Grep<cr>
map <c-s><c-r> :Rgrep<cr>
map <c-s><c-f> :Fgrep<cr>
map <c-s><c-v> :RFgrep<cr>

" " Quickfix window
map <c-k><c-o> :copen<cr>
map <c-k><c-l> :cclose<cr>
map <c-k><c-n> :cnewer<cr>
map <c-k><c-p> :colder<cr>

" " Taglist setting
let Tlist_Use_Right_Window = 1
map <c-x><c-t> :TlistToggle<cr>

" ctags tutorial
" " http://www.vim.org/tips/tip.php?tip_id=94
" " omnicpp auto completion
" " http://www.vim.org/scripts/script.php?script_id=1520
filetype plugin on

" " create ctags
map <C-F7> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+fq .

" " no automatic popup for '.', '->'
let OmniCpp_MayCompleteDot = 0
let OmniCpp_MayCompleteArrow = 0
" " other stuff
let OmniCpp_LocalSearchDecl = 1
let OmniCpp_ShowPrototypeInAbbr = 1
" " close preview window automatically
" "autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
" "autocmd InsertLeave * if pumvisible() == 0|pclose|endif
" " use STL sources using the _GLIBCXX_STD macro
"let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" " use system-wide tags created with
" " ctags -R --c++-kinds=+p --fields=+iaS --extra=+q -o ~/system.tags
"/usr/include
"set tags+=~/system.tags
"set tags+=~/work/mytags/stl.tags
set tags=./tags,tags;

map <F12> :bn<CR>
map <F11> :bp<CR>
map <F9> "+y
map <S-F9> <Esc>"+gP

cabbrev term
      \ ConqueTerm bash


"==============================================================================
" " Settings for string searching
" " REF http://vim.wikia.com/wiki/Find_in_files_within_Vim

" " works but not as nice as cabbrev
"map <F3> :execute "noautocmd vimgrep /" . expand("<cword>") . "/gj **/*." .  expand("%:e") <Bar> cw<CR>
"cmap Se noautocmd vimgrep /" . <C-R><C-W> . "/gj **/*." .  expand("%:e") <Bar> cw

"cabbrev Grep
"      \ noautocmd vimgrep /\<lt><C-R><C-W>\>/gj
"      \ ./**/*<C-R>=(expand("%:e")=="" ? "" : ".".expand("%:e"))<CR>
"      \ <Bar> cw
"      \ <C-Left><C-Left><C-Left>

cabbrev Grep
      \ noautocmd vimgrep /\<lt><C-R>=(expand("<cword>")=="" ? "" : expand("<cword>"))<CR>\>/gj
      \ ./**/*<C-R>=(expand("%:e")=="" ? "" : ".".expand("%:e"))<CR>
      \ <Bar> cw
      \ <C-Left><C-Left><C-Left>

"==============================================================================
" " Try to config the color of Minibufexpl, didnot work
":hi MBEVisibleNormal guifg=Red guibg=#ff00ff
":hi MBENormal guifg=Red guibg=#ff00ff
":hi MBEChanged guifg=Red guibg=#ff00ff
":hi MBEVisibleChanged guifg=Red guibg=#ff00ff

" " Highlight searching
set hlsearch
"noremap <C-F8> :nohlsearch<CR>
"noremap <C-F8> :set hlsearch!<CR>
map <F8> :Ex<CR>

" " turn on incremental search
set incsearch

"set tags+=/home/zhen/svn_untouched/system/branches/oaktrunk/main/ppcmains/tags
"set tags+=/home/zhen/svn_untouched/system/branches/oaktrunk/main/allshare/tags
"set tags+=/home/zhen/iproute/iproute2-2.6.23-rc3/tags

" " fix arrow keys when use vi remotely
"set t_ku=[A
"set t_kd=[B
"set t_kr=[C
"set t_kl=[D

" " window size:
" set lines=40
"
" " scroll bar at the left rather than the right:
" set guioptions-=r
" set guioptions+=l
"
" " no menu, and no toolbar:
"set guioptions-=m
"set guioptions-=T
"
" " have a small-ish yet readable font:
"set guifont=*fixed*medium*semicondensed*120*iso8859-1*
"
" " have error messages red on white (rather than t'tother way round, whicha
" " isn't readable in the above font):
" highlight ErrorMsg guibg=White guifg=Red

" " look up parent directories for tag file
"let tag_dir=getcwd()
"if match(tag_dir, "^/") == 0
"        let end_dir='/'
"        while !filereadable(tag_dir."/tags") && tag_dir!=$HOME && tag_dir!=end_dir
"                let tag_dir = substitute(tag_dir, '/[^/]\+$', "", "")
"        endwhile
"        if filereadable(tag_dir."/tags")
"                exe "set tags+=".tag_dir."/tags"
"        endif
"elseif match(tag_dir, "^[a-zA-Z]:[\\/]") == 0
"        let end_dir=tag_dir[0].tag_dir[1]
"        while !filereadable(tag_dir."\\tags") && tag_dir!=end_dir
"                let tag_dir = substitute(tag_dir, '\\[^\\]\+$', "", "")
"        endwhile
"        if filereadable(tag_dir."\\tags")
"                exe "set tags+=".tag_dir."\\tags"
"        endif
"endif

" " Fix arrow keys when using vi remotely or via tmux
function! FixArrowKeys()
    set t_ku=[A
    set t_kd=[B
    set t_kr=[C
    set t_kl=[D
endfunction

comm! -nargs=? -bang FixArrowKeys call FixArrowKeys()

" " Set search path for a.vim
let g:alternateSearchPath = 'sfr:..,sfr:./api,sfr:../source,sfr:../src,sfr:../include,sfr:../inc'
cmap FH A
cmap FF IH


" " ====== BufExplorer START ======
"cmap Be BufExplorer
"cmap Bv VSBufExplorer
"cmap Bh HSBufExplorer
"
"map <F7> :BufExplorer<CR>
"map <S-F7> :VSBufExplorer<CR>
"map <A-F7> :HSBufExplorer<CR>

cabbrev Be
    \ BufExplorer

cabbrev Bve
    \ VSBufExplorer

cabbrev Bhe
    \ HSBufExplorer
" " ====== BufExplorer END ======


" " ====== cscope START ======
cabbrev csfc
      \ cs find c <C-R>=(expand("<cword>")=="" ? "" : expand("<cword>"))<CR>
      \ <C-Left>
cabbrev csfd
      \ cs find d <C-R>=(expand("<cword>")=="" ? "" : expand("<cword>"))<CR>
      \ <C-Left>
cabbrev csfe
      \ cs find e <C-R>=(expand("<cword>")=="" ? "" : expand("<cword>"))<CR>
      \ <C-Left>
cabbrev csff
      \ cs find f <C-R>=(expand("<cword>")=="" ? "" : expand("<cword>"))<CR>
      \ <C-Left>
cabbrev csfg
      \ cs find g <C-R>=(expand("<cword>")=="" ? "" : expand("<cword>"))<CR>
      \ <C-Left>
cabbrev csfi
      \ cs find i <C-R>=(expand("<cword>")=="" ? "" : expand("<cword>"))<CR>
      \ <C-Left>
cabbrev csfs
      \ cs find s <C-R>=(expand("<cword>")=="" ? "" : expand("<cword>"))<CR>
      \ <C-Left>
cabbrev csft
      \ cs find t <C-R>=(expand("<cword>")=="" ? "" : expand("<cword>"))<CR>
      \ <C-Left>
cabbrev csf
      \ cs find
" " ====== cscope End ======


