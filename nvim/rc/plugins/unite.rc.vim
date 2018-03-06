" unite の構成ファイルの保存先
let g:unite_data_directory = GetSafeDir(GetCacheDir() . '/unite')


" Unite grep の設定
if executable('pt')
  " pt: The Platinum Searcher
  "   https://github.com/monochromegane/the_platinum_searcher
  let g:unite_source_grep_command = 'pt'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor'
  let g:unite_source_grep_recursive_opt = ''
  let g:unite_source_grep_encoding = 'utf-8'
elseif executable('hw')
  " highway: http://tkengo.github.io/blog/2015/10/19/release-highway/
  let g:unite_source_grep_command = 'hw'
  let g:unite_source_grep_default_opts = '--no-group --no-color'
  let g:unite_source_grep_recursive_opt = ''
elseif executable('ag')
  " ag
  " MacOS  : `brew install ag`
  " CentOS : `rpm -ivh http://swiftsignal.com/packages/centos/6/x86_64/the-silver-searcher-0.14-1.el6.x86_64.rpm`
  " Ubuntu : `sudo apt-get install silversearcher-ag`
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_max_candidates = 200
"     let g:unite_source_grep_default_opts = '--vimgrep --ignore "*.orig"'
  let g:unite_source_grep_default_opts = '--vimgrep --ignore ''*.orig'''
  let g:unite_source_grep_recursive_opt = ''
else
  " default (grep)
  let g:unite_source_grep_recursive_opt = '-R'
  let g:unite_source_grep_default_opts = '-iRHn -a --exclude="*.log"'
endif
