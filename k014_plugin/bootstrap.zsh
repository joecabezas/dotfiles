#!/usr/bin/zsh

BASE_DIR=${0:A:h}
INCLUDE_FOLDER="$BASE_DIR/include"

#Load all .zsh scripts in the include folder
for include_file ($INCLUDE_FOLDER/*.zsh(N)); do
	echo "loading: $include_file"
	source $include_file
done
unset include_file
