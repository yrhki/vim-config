" Download vim-plug if it dosen't exist
let plugpath = expand("~/.vim/autoload/plug.vim")
if !filereadable(plugpath)
    if executable("curl")
        let url = "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
        let output = system("curl -fLo " . shellescape(plugpath) . " --create-dirs " . url)
        if v:shell_error != 0
            echom "Error downloading vim-plug"
            exit
        endif
    else
        echom "Can't install vim-plug."
        exit
    endif
endif


call plug#begin('~/.vim/plugged')

Plug 'yrhki/vim-blackout'
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py --all' }
Plug 'vim-syntastic/syntastic'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'plasticboy/vim-markdown'
"Plug 'jceb/vim-orgmode'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'aserebryakov/vim-todo-lists'
Plug 'tpope/vim-speeddating'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

