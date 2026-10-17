# Hermes runs from the source checkout (~/git/hermes-agent) with its own data home,
# kept apart from any packaged install. Activate the checkout manually with
# `source ./activate` (zsh: wrap it with `emulate -L bash`, see the checkout's docs).
export HERMES_HOME="$HOME/hermes-dev-data"
export HERMES_RUNTIME_DIR="$HERMES_HOME/tools"
