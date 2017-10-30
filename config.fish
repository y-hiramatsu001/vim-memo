# 環境変数
set -x PATH $PATH $HOME/.nodebrew/current/bin
set -x PATH $PATH `yarn global bin`


# キーバインド
function fish_user_key_bindings
  bind \cp 'peco_select_history (commandline -b)' # ctrl + p でコマンド履歴
  bind \cg peco_select_ghq_repository # ctrl + g でgitリポジトリを管理
end


# エイリアスからでも補完が使える
balias rm 'rmtrash'
balias gs 'git status'
balias gl 'git log'
balias gb 'git branch'
balias gc 'git checkout'

