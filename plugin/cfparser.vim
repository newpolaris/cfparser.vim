" Variable definitions "{{{
let g:cf_pl_gcc = "10"
let g:cf_pl_gcc11 = "43"
let g:cf_pl_gpp = "1"
let g:cf_pl_gpp11 = "42" 
let g:cf_pl_gpp14 = "50"
let g:cf_pl_msvc10 = "2"
let g:cf_pl_monocharp = "9"
let g:cf_pl_mscharp = "29"
let g:cf_pl_d = "28"
let g:cf_pl_go = "32"
let g:cf_pl_haskel = "12"
let g:cf_pl_java_8 = "36"
let g:cf_pl_kotlin = "48"
let g:cf_pl_ocaml = "19"
let g:cf_pl_delphi = "3"
let g:cf_pl_fpc = "4"
let g:cf_pl_perl = "13"
let g:cf_pl_php = "6"
let g:cf_pl_python_2 = "7"
let g:cf_pl_python_3 = "31"
let g:cf_pl_pypy_2 = "40"
let g:cf_pl_pypy_3 = "41"
let g:cf_pl_ruby = "8"
let g:cf_pl_scala = "20"
let g:cf_pl_js = "34"

let g:cf_pl_by_ext =    {'.cpp': g:cf_pl_gpp14,
                        \'.cc': g:cf_pl_gpp14,
                        \'.c': g:cf_pl_gcc,
                        \'.pas': g:cf_pl_fpc,
                        \'.php': g:cf_pl_php,
                        \'.java': g:cf_pl_java_8,
						\'.cs': g:cf_pl_monocharp,
                        \'.py': g:cf_pl_python_3}

if !exists('g:cf_cookies_file')
    let g:cf_cookies_file = expand('~/.cf_cookies')
endif

if !exists('g:cf_default_language')
    let g:cf_default_language = g:cf_pl_gpp14
endif

if !exists('g:cf_locale')
    let g:cf_locale = "en"
endif

"}}}
" Command definitions "{{{
command! -nargs=0 CFLogin call cfparser#CFLogin()
command! -nargs=0 CFLogout call cfparser#CFLogout()
command! -nargs=0 CFWhoAmI call cfparser#CFWhoAmI()
command! -nargs=0 CFProblemStatement call cfparser#CFProblemStatement()
command! -nargs=0 CFDownloadTests call cfparser#CFDownloadTests()
command! -nargs=0 CFTestAll call cfparser#CFTestAll()
command! -nargs=0 CFRun call cfparser#CFRun()
command! -nargs=0 CFSubmit call cfparser#CFSubmit()
command! -nargs=? CFLastSubmissions call cfparser#CFLastSubmissions(<args>)

"}}}
" Keys definitions "{{{
nmap <leader>cfi :CFLogin<CR>
nmap <leader>cfo :CFLogout<CR>
nmap <leader>cfw :CFWhoAmI<CR>
nmap <leader>cfp :CFProblemStatement<CR>
nmap <leader>cfd :CFDownloadTests<CR>
nmap <leader>cft :CFTestAll<CR>
nmap <leader>cfr :CFRun<CR>
nmap <leader>cfs :CFSubmit<CR>
nmap <leader>cfl :CFLastSubmissions<CR>
"}}}
" vim:foldmethod=marker:foldlevel=0
