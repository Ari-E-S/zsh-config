# Activate the "mise" plugin if available
# see https://mise.jdx.dev/
zinit \
  wait'0' \
  lucid \
  has"mise" \
  as"null" \
  id-as"mise-activate" \
  atload'eval "$(mise activate zsh)"' \
    for zdharma-continuum/null
