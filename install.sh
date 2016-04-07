#!/bin/bash
curl -sL https://github.com/goody80/go_build/raw/master/go_build.sh > ~/go_build.sh
	if [[ `(which sudo 2> /dev/null)` = "" ]];then
			SUDO=""
	else
			SUDO="sudo"
	fi

$SUDO cp  ~/go_build.sh /usr/bin/go_build.sh
$SUDO chmod 755 /usr/bin/go_build.sh

