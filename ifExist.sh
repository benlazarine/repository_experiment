#!/bin/bash
# $1: file or directory spec
# $2: file or directory name
# $3: path to $1 or $2
# $4: ticket number for iplant or file location 
# $5: file ext
################################################################################################################
case $1 in
	-f )
		if [ -f "$3/$2.$5" ]
		then
			echo "$2 found. Skip download $2.zip"
		else
			echo "$2 not found."
			echo "Create directory for $2"
			mkdir -p $3/
			echo "Start download: $2"
			wget -O $3/$2.zip http://de.cyverse.org/dl/d/9FC9295E-BF78-49E1-B111-EBDA83F090C3/$2.zip
			echo "Done download: $2"
		fi
		;;
	-d )
		case $5 in
			.zip )
				if [ -d "$3/$2" ]
				then
					echo "$2 found. Skip unzip $2"
				else
					echo "$2 not found."
					echo "start unzip: $2.zip"
					mkdir -p $3/
					sudo unzip -o -q $4/$2.zip -d $3/
					echo "Done unzip: $2.zip"
				fi
				;;
			.tar.bz2 )
				if [ -d "$3/$2" ]
				then
					echo "$2 found. Skip untar $2"
				else
					echo "$2 not found."
					echo "start untar: $2.tar.bz2"
					mkdir -p $3/
					sudo tar xjf $4/$2.tar.bz2 -C $3/
					echo "Done unzip: $2.tar.bz2"
				fi
				;;
		esac
		;;

	EXIT ) echo 'Now exiting'; exit ;;
esac
