#!/usr/bin/env bash
###################################################
# Date       : Wed 31 Feb 2024 23:38:50 IST
# File name  : scriptmake.sh
# Author     : test 
# License    : GNU/GPL v3.0
###################################################
# A simple that takes a file name as a command line argument ($1).It then creates a new file with the provided name, adds a header with some information,and makes the file executable. Additionally, it opens the file in the text editor.
# Usage: ./scriptmake.sh <file name>
###################################################

# Check if the file name is provided as a command line argument
[[ $# -ne 1 ]] && echo 'Type a valid file name, please' && exit 1

# Check if the file already exists
[[ -f "$1" ]] && echo 'File already exists. Exiting.' && exit 1

# Header
header="#!/usr/bin/env bash
###################################################
# Date        : $( date +'%d %b %Y %H:%M:%S %Z' )
# File name   : $1
# Author      : test
# License     : GNU/GPL v3.0
###################################################
# Usage       :
###################################################
"

echo "$header" >> "$1"

chmod +x "$1"
nano "$1"

exit 0
