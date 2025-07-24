# Look and feel
add-highlighter global/ number-lines -hlcursor -relative -separator "  "
add-highlighter global/ show-matching

# Options
set-option global tabstop 2
set-option global indentwidth 2
set-option global scrolloff 8,3
set-option -add global ui_options terminal_assistant=none # goodbye, clippy
set-option global grepcmd 'rg -Hn --no-heading' # use ripgrep

## Keybindings
# Readline navigation
map global insert <C-a> <home>
map global insert <C-e> <end>
map global insert <C-f> <right>
map global insert <C-b> <left>
map global insert <C-p> <up>
map global insert <C-n> <down>
map global insert <A-f> '<a-;>: readline-forward-word<ret>'
map global insert <A-b> '<a-;>: readline-backward-word<ret>'
map global insert <C-d> <del>
map global insert <C-h> <backspace>
# Readline delete word
map global insert <A-backspace> '<left><a-;>B<a-;>"_d'
map global insert <A-d> '<a-;>;<a-;>E<a-;>"_d'
# Readline delete to end
map global insert <C-k> '<a-;>;<a-;>Gl<a-;>"_d'

# SPACE - commands
map global user c ":comment-line<ret>" -docstring "Comment"
map global user g ":lsp-definition<ret>" -docstring "Go to"
map global user h ":lsp-hover<ret>" -docstring "Hover"
map global user H ":lsp-signature-help<ret>" -docstring "Help signature"
map global user F ":lsp-formatting<ret>" -docstring "Format"
map global user r ":lsp-rename-prompt<ret>" -docstring "Rename"
map global user a ":lsp-code-actions<ret>" -docstring "Actions"
map global user b ":pick-buffers<ret>" -docstring "Buffers"
map global user G ":rg-files<ret>" -docstring "Grep"
map global user D ":lsp-diagnostics<ret>" -docstring "Diagnostics"

# LSP
eval %sh{kak-lsp}
lsp-enable

# use Tab and Shift+Tab for autocomplete selection
hook global InsertCompletionShow .* %{
  try %{
    execute-keys -draft 'h<a-K>\h<ret>'
    map window insert <tab> <c-n>
    map window insert <s-tab> <c-p>
    hook -once -always window InsertCompletionHide .* %{
      unmap window insert <tab> <c-n>
      unmap window insert <s-tab> <c-p>
    }
  }
}


# functions for readline
define-command -hidden readline-forward-word %{
    try %{
        execute-keys '<a-;><a-/>.<ret><a-;>/[a-zA-Z0-9]+<ret><right>'
    }
}
define-command -hidden readline-backward-word %{
    try %{
        execute-keys '<a-;><a-/>[A-Za-z0-9]+<ret><a-:><a-;><a-;><a-;>;'
    }
}


# Grep command
define-command rg-files %{
  prompt "Search:" %{
  	evaluate-commands %{grep "%val{text}"}
  }
}

# Change dark/light colorscheme accourding to desktop dark/light theme
define-command colo %sh{
  if [ "$(gsettings get org.gnome.desktop.interface color-scheme)" = "'prefer-dark'" ]; then
  	echo "colorscheme tomorrow-night"
  else
  	echo "colorscheme github"
  fi
}
colo
