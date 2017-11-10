# 環境変数
set -x PATH $PATH $HOME/.nodebrew/current/bin
set -x PATH $PATH `yarn global bin`


# キーバインド
function fish_user_key_bindings
  bind \cp 'peco_select_history (commandline -b)' # ctrl + p でコマンド履歴
end


# エイリアスからでも補完が使える
balias lla 'ls -al'
balias rm 'rmtrash'
balias gs 'git status'
balias gl 'git log'
balias glo 'git log --oneline'
balias gb 'git branch'
balias gc 'git checkout'


# cdしたらll
function cd
    if test (count $argv) -eq 0
        return 0
    else if test (count $argv) -gt 1
        printf "%s\n" (_ "Too many args for cd command")
        return 1
    end
    # Avoid set completions.
    set -l previous $PWD

    if test "$argv" = "-"
        if test "$__fish_cd_direction" = "next"
            nextd
        else
            prevd
        end
        return $status
    end
    builtin cd $argv
    set -l cd_status $status
    # Log history
    if test $cd_status -eq 0 -a "$PWD" != "$previous"
        set -q dirprev[$MAX_DIR_HIST]
        and set -e dirprev[1]
        set -g dirprev $dirprev $previous
        set -e dirnext
        set -g __fish_cd_direction prev
    end

    if test $cd_status -ne 0
        return 1
    end
    ls -al
    return $status
end


