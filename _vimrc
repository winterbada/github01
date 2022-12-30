"shell=C:\\Program Files\\PowerShell\\7\\pwsh.exe
set shell=powershell

syntax enable


set visualbell "잘못눌렀을때 화면 깜밖임
set nobackup "백업파일 만들지 않기
set hlsearch " 검색어 하이라이팅
set nu " 줄번호
set autoindent " 자동 들여쓰기
set scrolloff=2
set wildmode=longest,list
set ts=4 "tag select
set sts=4 "st select
set sw=4 et " 스크롤바 너비
set autowrite " 다른 파일로 넘어갈 때 자동 저장
set autoread " 작업 중인 파일 외부에서 변경됬을 경우 자동으로 불러옴
set cindent " C언어 자동 들여쓰기
set bs=eol,start,indent
set history=1000
set laststatus=2 " 상태바 표시 항상
"set paste " 붙여넣기 계단현상 없애기
set shiftwidth=4 " 자동 들여쓰기 너비 설정
set showmatch " 일치하는 괄호 하이라이팅
set smartcase " 검색시 대소문자 구별
set smarttab
set smartindent
set softtabstop=4
set tabstop=4
set ruler " 현재 커서 위치 표시
set incsearch 


if has("syntax")
 syntax on
endif

"colorscheme jellybeans

set termguicolors


call plug#begin('$HOME/vimfiles/autoload')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'preservim/nerdtree'
Plug 'frazrepo/vim-rainbow'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'

call plug#end()

let g:airline_section_b = '%{strftime("%c")}' "상태바 시간표시
let g:airline_section_y = 'BN: %{bufnr("%")}' "상태바 버퍼표시



let g:gruvbox_contrast_dark="hard"
set background=dark
autocmd vimenter * colorscheme gruvbox


let g:rainbow_active = 1 " 괄호 색깔 변경

let g:indent_guides_enable_on_vim_startup = 1 "들여쓰기
let g:indent_guides_guide_size = 1


nmap <F7> :NERDTreeToggle<CR>


" ctrlp 에서 인식할 프로젝트 루트 마커 지정
let g:ctrlp_root_markers = ['tags']

" *.swp, *.class 파일 무시
set wildignore+=*.swp,*.class

" <c-p> 기본 탭을 files 가 아닌 MRU files 로 설정
let g:ctrlp_cmd = 'CtrlPMRU'
