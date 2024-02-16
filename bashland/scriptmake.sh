#!/usr/bin/env bash

# Author         : test 
# Date           : Wed 31 Feb 2024 23:38:50 IST
# File           : scriptmake.sh
# Description    : A simple shell script that simple shell script that takes a filename as a command line argument ($1). It creates a new file with the provided name, adds a header with some information, and makes the file executable. Additionally, it opens the file in the nano text editor for editing.

#Check if the file name is provided as a command line argument
[[ $# -ne 1 ]] && echo 'Type a valid file name, please' && exit 1

#Check if the file already exists
[[ -f "$1" ]] && echo 'File already exists. Exiting.' && exit 1

echo '#!/usr/bin/env bash' >"$1"

date >> "$1"
echo "Author   :  test
Filename : '$1'" >> "$1"

chmod +x "$1"
nano "$1"

exit 0

#Parameters:
# <filename>: The name of the file to be created and edited.
#Usage: ./scriptmake.sh <filename>
