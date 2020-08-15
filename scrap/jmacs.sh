#!/bin/bash - 
#===============================================================================
#
#          FILE: jmacs.sh
# 
#         USAGE: ./jmacs.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 2020-05-09 21:26:24
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

emacs -q --eval '(load-file "~/.emacs.d/java-ide/java-ide.el")'
