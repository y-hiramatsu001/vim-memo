# vim-memo

## install dein.vim
    git clone https://github.com/Shougo/dein.vim.git

## install Ricty
    brew install ricty --vim-powerline
    cp -f /usr/local/Cellar/ricty/4.0.1/share/fonts/Ricty*.ttf ~/Library/Fonts/
    fc-cache -vf

## font
    D2Coding-Font-for-Powerline

## vim with lua install
    brew install lua
    brew reinstall vim --with-lua

## fisher plugin
* balias
* peco
* bobthefish
* edc/bass

## diff-highlight settings
* /usr/local/bin配下に
* /usr/local/share/git-core/contrib/diff-highlight/diff-highlightの
* シンボリックリンク追加

## VS Code vim plugin settings
    "vim.insertModeKeyBindings": [
        {
            "before": ["j","j"],
            "after": ["<Esc>"]
        }
    ],

## VS Code plugin list
* .ejs
* All Autocomplete
* ArgonautTheme
* AtomOneDarkTheme
* Beautify
* EditorConfig for VS code
* ESLint
* Javascript(ES6)code snippets
* jQueryCodeSnippets
* PostCSSsyntax
* ReactReduxES6Snippets
* SimpleIconTheme
* Vetur
* Vim
* vscode-input-sequence
* Auto-Open Markdown Preview
* markdown pdf
* Apache conf
* IntelliSense for CSS class names
* vscode-pdf
* stylelint

## convert markdown to pdf
    Cmd+Shift+P
    convert markdown to pdf
