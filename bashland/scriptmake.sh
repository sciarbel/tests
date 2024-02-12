#!/usr/bin/env bash

# Author         : test 
# Date           : Wed 31 Feb 2024 23:38:50 IST
# File           : scriptmake.sh
# Description    : A simple shell script that takes a filename as a command line argument ($1), creates a new file with the given name, makes it executable, and opens it in the nano text editor for editing.

[[ $# -ne 1 ]] && echo 'Type a valid filename, please' && exit 1

echo '#!/usr/bin/env bash' >"$1"
date >> "$1"
echo "Author   :  test
Filename : '$1'" >> "$1"
chmod +x "$1"
nano "$1"

#Usage: ./scriptmake.sh <filename>
#Parameters:
#- filename: The name of the file to be created and edited.
#Example:
#./scriptmake.sh new_script