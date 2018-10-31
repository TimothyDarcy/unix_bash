NAME
	adv_system_info.sh - advanced system information

SYNOPSIS
	adv_system_info [-flag]
DESCRIPTION
	adv_system_info runs and various system utilities to display certain
	information to the user. It processes arguments to then display output.
	It will display multiple options, provided each one comes with the 
	-o flag. 
OPTIONS
	-c displays number of cores per socket and number of detected sockets
	-n current nice priority value
	-p current number of pr1ocesses owned by the user
	-f current number of open file descriptors owned by the user
	-m Default maximum number of file descriptors able to be opened
		by a process
AUTHOR
	Timothy D'Arcy s3612969@student.rmit.edu.au
DATE
	31/10/2018
