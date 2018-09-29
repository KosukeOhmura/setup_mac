set -x FISH_CONFIG_DIR $HOME/.config/fish
source $FISH_CONFIG_DIR/env.fish
source $FISH_CONFIG_DIR/aliases.fish
source $FISH_CONFIG_DIR/user_functions.fish

eval (direnv hook fish)
eval (hub alias -s)

# iterm2_shell_integration
source ~/.iterm2_shell_integration.fish
