if (exists("b:did_ftplugin"))
  finish
endif

let b:did_ftplugin = 1

setlocal comments=:;
setlocal commentstring=;\ %s

setlocal expandtab
setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2
