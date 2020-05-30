let b:ale_linters = ['eslint']
let b:ale_fixers = ['eslint', 'importjs']

" Needed for webpack-dev-server write events being catched
" https://github.com/webpack/webpack/issues/781#issuecomment-95523711
set backupcopy=yes
