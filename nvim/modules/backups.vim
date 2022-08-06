" Backups --------------------------------------------------------------------

" Inicia o backup
set backup

" Define o diretório para os backups
set backupdir=~/.config/nvim/backups

" Arquivos do qual backups devem ser ignorados
set backupskip=/tmp/*

" Salva o arquivo no backup
set writebackup

" Ajuste para hot reloading (desabilitar o 'safe write')
set backupcopy=yes

" Define Highlight para arquivos que não são detectados automaticamente ------
au BufReadPost .tmux.conf.local set syntax ft=tmux
au BufReadPost .env.* set syntax ft=sh
