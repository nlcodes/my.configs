" Basic settings

" Enable syntax highlighting
syntax on

" Show line numbers
set number

" Set tab width to 2 spaces
set tabstop=2

" Set auto-indent to 2 spaces
set shiftwidth=2

" Convert tabs to spaces
set expandtab

" Keep indentation from previous line
set autoindent

" Highlight search results as you type
set incsearch
set hlsearch

" Yank to clipboard in visual mode using xclip (corrected)
vnoremap y :<C-u>call YankToClipboard()<CR>

function! YankToClipboard()

  " Yank the selected text to the default register
  normal! gvy
  " Pass the text to xclip
  call system('xclip -selection clipboard', @")
endfunction

" Paste from clipboard using xclip
nnoremap p :let @"=system('xclip -selection clipboard -o')<CR>p
vnoremap p :let @"=system('xclip -selection clipboard -o')<CR>p

" Delete and copy to clipboard in visual mode
vnoremap d :<C-u>call DeleteToClipboard()<CR>

function! DeleteToClipboard()

" Yank the selected text to the default register
  normal! gvy
  " Pass the text to xclip
  call system('xclip -selection clipboard', @")
  " Delete the selected text
  normal! gvd
endfunction

" Line Number Colors

" Change line numbers color
hi LineNr ctermfg=darkgray

" Change end-of-buffer tildes color
hi NonText ctermfg=darkgray

" Syntax Colors

" Set default text color and background
hi Normal ctermfg=white ctermbg=black

" Set comment color
hi Comment ctermfg=darkgray

" Set string color
hi String ctermfg=darkgreen

" Set function name color
hi Function ctermfg=green

" Set keyword color
hi Statement ctermfg=green

" Set type name color
hi Type ctermfg=white

" Set special character color
hi Special ctermfg=red

" Set variable name color
hi Identifier ctermfg=cyan

" Set constant color
hi Constant ctermfg=red

" Set preprocessor directive color
hi PreProc ctermfg=red

" UI Elements

" Set selected text highlighting
hi Visual ctermbg=magenta ctermfg=white

hi Search ctermbg=magenta ctermfg=white
