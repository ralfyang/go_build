#!/bin/bash
Package_name=$1
BARR="#################################################################"
Name=(windows MacOS freebsd RHEL/Ubuntu/Fedora/Suse openbsd netbsd dragonfly plan9)
OS=(windows darwin freebsd linux openbsd netbsd dragonfly plan9)
ARCH=(32bit 64bit)

echo ""
echo "$BARR"
echo " Please select OS as below list"
echo "$BARR"
	Count=0
	while [ $Count -lt ${#Name[@]} ];do
			echo "[`expr $Count + 1`] - ${Name[$Count]}"

	let Count=$Count+1
	done
echo "$BARR"
echo " Select a number: [ 1 - ${#Name[@]} ]"
read OS_choose

Chose_OS=${OS[$OS_choose-1]}

echo "$BARR"
echo "[1] ${ARCH[0]}, [2] ${ARCH[1]}: [ 1 - 2 ]"
read Bit_choose
	if [[ $Bit_choose = "1" ]];then
			Chose_Bit="386"
	elif [[ $Bit_choose = "2" ]];then
			Chose_Bit="amd64"
	fi


export GOOS=$Chose_OS
export GOARCH=$Chose_Bit
go build -v $Package_name
