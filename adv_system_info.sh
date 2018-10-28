#!/bin/bash
#Script Name: adv_system_info
#Author: Timothy D'Arcy
#Date Written: 28/10/18
#Date Last Modified: 28/10/18
#The purpose of this script is to return one or more of the following
#based on arguemnts passed in and retrieved using getopts. Flag is -o for option
#	number of cpu cores on the system
#		-o cores
#	current process priority in a readable format
#		-o priority
#	current user processes
#		-o proc
#	number of open file descriptors belonging to current user
#		-o file-des
#	default maximum number of file descriptors able to be opened by process
#		-o def-file-des

#switch statement

while getopts "o:" flag; do
	
	case $OPTARG in
		cores)
			echo "cores code"
			#lscpu prints cpu info, grep limits that info
			lscpu | grep -E 'Socket|Core\(s)'
			;;
		priority)
			echo "priority code"
			;;
		proc)
			echo "current user proceses code"
			;;
		file-des)
			echo "file descriptors open code"
			;;
		def-file-des)
			echo "Default file descriptor number code"
			;;
	esac
done

