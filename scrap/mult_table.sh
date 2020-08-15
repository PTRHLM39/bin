#!/bin/bash - 
#===============================================================================
#
#          FILE: mult_table.sh
# 
#         USAGE: ./mult_table.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 2020-05-17 16:17:31
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

echo "Enter a number"

read n
i=0
while [ $i -le 10 ]
do
	echo " $n x $i = `expr $n \* $i`"
	i=`expr $i + 1`
done
