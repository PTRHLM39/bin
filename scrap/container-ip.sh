#!/usr/bin/env sh
#===============================================================================
#
#          FILE: container-ip.sh
# 
#         USAGE: ./container-ip.sh 
# 
#   DESCRIPTION: Lists the name and corresponding IP-adress for each running 
#		 Docker container.
# 
#       OPTIONS: ---
#  REQUIREMENTS: --- Docker, AWK
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: ptrhlm39
#  ORGANIZATION: 
#       CREATED: 2020-05-03 18:38:39
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

for ID in $(docker ps -q | awk '{print $1}'); do
	IP=$(docker inspect --format="{{range.NetworkSettings.Networks}}{{.IPAdress}}{{end}}" "$ID")
	NAME=$(docker ps | grep "$ID" | awk '{print $NF}')
	printf "%s %s\n" "$IP" "$NAME"
done
