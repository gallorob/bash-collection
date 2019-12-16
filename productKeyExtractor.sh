#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

if ! [ -z $1 ]; then
	case $1 in
		"-h")
			echo "$(printf "\nUsage $0 and optional\n\n\t-h to print help\n\t-f to cat license in a productKey.txt file")"
		;;
		"-f")
            key=`cat /sys/firmware/acpi/tables/MSDM | grep -aoP '[A-Z0-9]{5}-[A-Z0-9]{5}-[A-Z0-9]{5}-[A-Z0-9]{5}-[A-Z0-9]{5}'`
			echo $key > productKey.txt
		;;
		*) echo "Please select a valid flag: use -h to view help"
	esac
else
    key=`cat /sys/firmware/acpi/tables/MSDM | grep -aoP '[A-Z0-9]{5}-[A-Z0-9]{5}-[A-Z0-9]{5}-[A-Z0-9]{5}-[A-Z0-9]{5}'`
	echo "[KEY:] $key"
fi


		
