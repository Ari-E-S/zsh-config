if ! command -v "op" &> /dev/null; then
  # 1Password-CLI is not installed
  return
fi

# Source the plugins configuration if one is available
[[ -f $HOME/.config/op/plugins.sh ]] && source $HOME/.config/op/plugins.sh
