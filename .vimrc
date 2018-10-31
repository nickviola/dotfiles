syntax on                       " turns syntax highlighting on
"colorscheme default             " defines the color scheme of the syntax highlighting

set mouse=a                     "enable mouse control in all modes
set mousefocus
set ttymouse=sgr
set	spell
set sps=best
set backspace=2                 " make backspace work like most other apps
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set expandtab                   " expand tabs to spaces
"set cursorline                  " show a visual line under the cursor's current line
set nocompatible                " (cp) use Vim defaults (much better)
set ruler                       " (ru) show the cursor position at all times
set showcmd                     " (sc) display an incomplete command in the lower right
set history=200                 " (hi) keep x num lines of command history
set number                      " (nu) show line numbers
set showmatch                   " (sm) briefly jump to matching bracket when inserting one
set autoindent                  " (ai) turn on auto-indenting
set copyindent                  " (ci) when auto-indenting, use the indenting format of the previous line
set tabstop=4                   " (ts) width (in spaces) that a <tab> is displayed as
set shiftwidth=4                " (sw) width (in spaces) used in each step of autoindent (aswell as << and >>)
set smarttab                    " (sta) 'shiftwidth' used in front of a line, but 'tabstop' used otherwise
set textwidth=80                " (tw) number of columns before an automatic line break is inserted (see formatoptions)
set formatoptions=croq          " (fo) influences how vim automatically formats text
set backspace=indent,eol,start  " (bs) allows backspacing beyond starting point of insert mode, indents and line breaks
set nrformats+=alpha            " (nf) adds alpha chars to list that gets incremented/decremented with ^A/^X
set listchars+=tab:>-           " (lcs) strings used in 'list' mode to show hidden characters (default=eol:$)
set listchars+=trail:-
set winminheight=0              " (wmh) the minimal height of the window when it's not the current window

set nowrap                      " allows text to continue off the window (need horizontal scrolling)
set linebreak                   " (lbr) wrap long lines at a space instead of in the middle of a word
set sidescroll=3                " (ss) the minimal number of columns to scroll horizontally
set listchars+=precedes:<       " (lcs) when 'nowrap', character to indicate that line continues off the page
set listchars+=extends:>

set wrapscan                    " (ws) allows search to wrap to top of document when the bottom has been hit
set incsearch                   " (is) highlights what you are searching for as you type
set hlsearch                    " (hls) highlights all instances of the last searched string
set ignorecase                  " (ic) ignores case in search patterns
set smartcase                   " (scs) don't ignore case when the search pattern has uppercase
set infercase                   " (inf) during keyword completion, fix case of new word (when ignore case is on)

"set foldcolumn=6                " (fdc) width of fold column (to see where folds are)
"set foldmethod=syntax           " (fdm) creates a fold for every level of indentation
"set foldlevel=99                " (fdl) when file is opened, don't close any folds
"set foldenable                  " (fen) enables or disables folding

let html_use_css = 1            " the ':%TOhtml' command generates html without <font> tags
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0



" File Specific Settings
" ------------------------------------------------------------

au FileType py setlocal expandtab

au FileType xhtml,html,htm,php,xml,yaml,yml,js setlocal tabstop=2
au FileType xhtml,html,htm,php,xml,yaml,yml,js setlocal shiftwidth=2
au FileType xhtml,html,htm,php,xml,yaml,yml,js setlocal expandtab      " (et) expand tabs to spaces (use :retab to redo entire file)
au FileType xhtml,html,htm,php,xml.yaml,yml,js setlocal softtabstop=2   " (sts) makes spaces feel like tabs (like deleting)

au FileType c,h,java,js setlocal mps+==:;                   " allow the match pairs operation (%) to work with '=' and ';'

au FileType c,h setlocal cindent                            " enable the intelligent cindent (cin) feature for the following files
au FileType java,js setlocal smartindent                    " enable the smartindenting (si) feature for the following files

au FileType txt setlocal fo+=tn

" before writing to any file, this function call will remove any extra white space at the end of a line
" au! BufWrite,FileWritePre * call RemoveWhiteSpace()




" Abbreviations
" ------------------------------------------------------------

"abbreviate #i #include
"abbreviate #d #define

"abbreviate <a <a href=""></a><left><left><left><left><left>
"abbreviate <i <img src="" /><left><left><left>
"abbreviate l" &ldquo;&rdquo;<left><left><left><left><left><left>
"abbreviate r" &rdquo;
"abbreviate l' &lsquo;
"abbreviate r' &rsquo;
"abbreviate "" &quot;&quot;<left><left><left><left><left>

"abbreviate <? <?php?><left><left>




" Miscellaneous Settings
" ------------------------------------------------------------

" (dict) dictionary used for keyword completion
" to use: while in insertion mode and in the middle of a word, type <ctrl-n> and <ctrl-p>
set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words
" set complete-=k complete+=k
set completeopt=longest,menuone " Don't select first Omni-completion option


" Old stuff
" ---------------------------------------------------------------
" set wildmenu
set wildmode=longest,list,full
set undofile                  " Save undo's after file closes
set undodir=$HOME/.vim/undo   " where to save undo histories
set undolevels=300           " How many undos
set undoreload=1000          " number of lines to save for undo
let python_highlight_all=1    " enable all Python syntax highlighting features
set clipboard=unnamed         " linking system clipboard
let g:jsx_ext_required=0      " Js to indent like jsx



" Key Mappings
" ------------------------------------------------------------
" compile maps
nmap <F9> :SCCompile<cr>
nmap <F10> :SCCompileRun<cr>

" remapping movement keys swapping h and i
map i <Up>
map j <Left>
map k <Down>
noremap a i

"Remap esc to qq
imap hh <Esc>

" allows moving between split windows much faster and more intuitive
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_

" <F2> applies a rot13 dmca-grade encryption scheme to your file
map <F2> mzggg?G`z<CR>      "(seems to be faster than mzggVGg?`z)

" <F3> appends the current date and time after the cursor
map  <F3> a<C-R>=strftime("%c")<CR><Esc>
imap <F3>  <C-R>=strftime("%c")<CR>

" <F6> sorts a paragraph of numbers using the external 'sort' program
map <F6> {V}k:!sort<CR>

" <F7> toggles hidden characters
map  <F7> :set list!<CR>
imap <F7> <ESC>:set list!<CR>a

" <F9> toggles word wrap
map  <F9> :set wrap!<CR>
imap <F9> <ESC>:set wrap!<CR>a

" <F8> toggles whether the last searched string is highlighted
map  <F8> :set hls!<CR>
imap <F8> <ESC>:set hls!<CR>a






" Functions
" ------------------------------------------------------------

" Renames param1 tags to be param2 tags
function! RenameTag(param1, param2)
    :%s/<\(\/\?\)a:param1\(\_s*\)/<\1a:param2\2/gci
endfunction

" Strips the tag defined by the parameter (for html pages)
function! StripTag(TagName)
    :%s/a:TagName/hello/gci
    ":% s/<[^>]\+>//gci
endfunction

" Reverses all the lines in the file (top to bottom)
function! ReverseLines()
    :g/^/m0
endfunction

" Removes the ^M character from the end of every line
function! RemoveM()
    :%s/^M$//g
endfunction

" Replaces the ^M character with a carraige return native to the system
function! ReplaceM()
    :%s/^M/\r/g
endfunction

" Removes superfluous white space from the end of a line
function! RemoveWhiteSpace()
    :%s/\s*$//g
    :'^
    "`.
endfunction




" Command Reference
" ------------------------------------------------------------

" *                     - searches for word under cursor
" gd                    - finds definition of variable/function under cursor
" ga                    - prints the ascii value of character under cursor
" gf                    - opens file under the cursor (in split view)
" gi                    - goes to insert mode in the same spot as you last inserted
" ~                     - changes case of character
" :r !<cmd>             - reads the output of the shell <cmd> into the file
" :% s/hello/A/gc       - typical search and replace command

" :% !tidy              - runs the code through the 'tidy' program

" :runtime! syntax/2html.vim
" :10,40TOhtml

" command reference ->  " za : fold toggle  toggles between a fold being opened and closed (zA does it recursively)
"                       " zc : fold close   close 1 fold under the cursor (zC does it recursively)
                        " zo : fold open    open 1 fold under the cursor (zO does it recursively)
                        " zm : fold more    increases foldlevel by 1 (zM opens all folds)
                        " zr : fold reduce  decreses foldlevel by 1 (zR closes all folds)

" :retab                - when expandtab is set, replace all tabs in the file with the # of spaces defined in 'shiftwidth'
" :retab!               - when expandtab is not set, replace the number of spaces in 'shiftwidth' with a tab
if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=0
    set cst
    set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
    " else add database pointed to by environment
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set csverb

    "   's'   symbol: find all references to the token under cursor
    "   'g'   global: find global definition(s) of the token under cursor
    "   'c'   calls:  find all calls to the function name under cursor
    "   't'   text:   find all instances of the text under cursor
    "   'e'   egrep:  egrep search for the word under cursor
    "   'f'   file:   open the filename under cursor
    "   'i'   includes: find files that include the filename under cursor
    "   'd'   called: find functions that function under cursor calls
    nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
endif



" Plugin Settings
" ------------------------------------------------------------
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'w0rp/ale'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdTree'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rizzatti/dash.vim'
Plugin 'szw/vim-g.git'
Plugin 'pangloss/vim-javascript'
Plugin 'ervandew/supertab'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mxw/vim-jsx'
Plugin 'leafgarland/typescript-vim'

""" Moving Around/Editing
"autocmd VimEnter * Tagbar

" Start NerdTree
autocmd VimEnter * NERDTree

" Move to next window (right) from NerdTree
autocmd VimEnter * wincmd l

let g:NERDTreeMapOpenInTab='<2-LeftMouse>'

function! NERDTreeQuit()
  redir => buffersoutput
  silent buffers
  redir END
"                     1BufNo  2Mods.     3File           4LineNo
  let pattern = '^\s*\(\d\+\)\(.....\) "\(.*\)"\s\+line \(\d\+\)$'
  let windowfound = 0

  for bline in split(buffersoutput, "\n")
    let m = matchlist(bline, pattern)

    if (len(m) > 0)
      if (m[2] =~ '..a..')
        let windowfound = 1
      endif
    endif
  endfor

  if (!windowfound)
    quitall
  endif
endfunction
autocmd WinEnter * call NERDTreeQuit()

" Pathogen load
call pathogen#infect()
call pathogen#helptags()

" Airline plugin"
" Enable the list of buffers
" let g:airline#extensions#tabline#enabled=1
" let g:airline#extensions#tabline#fnamemod=':t'
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:airline#extensions#tabline#formatter = 'default'
" let g:airline_theme='kolor'

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
 let g:airline_symbols = {}
endif

let g:airline_symbols.space = "\ua0"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline_theme = 'solarized'


" ALE Linter
let &runtimepath.=',~/.vim/bundle/ale'
let g:ale_enabled=1
let g:ale_sign_column_always=1

let g:ale_linters = {'jsx': ['stylelint', 'eslint']}
let g:ale_linters = {'ts': ['stylelint', 'eslint']}
let g:ale_linter_aliases = {'jsx': 'css'}

let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1

" let g:ale_fixers={'javascript': ['eslint'], 'python': ['pylint', 'flake8']}
" let g:ale_fixers={'javascript': ['eslint'],}


" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1
" let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
" let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py"

nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

call vundle#end()            " required
