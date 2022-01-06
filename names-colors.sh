#!/bin/bash
#Written by Griffin Trull
#/tmp/userlist

while getopts ":a:" flag;do
        case $flag in
                a) echo "which file  would you like to use?";file="$OPTARG";
                        if [ ${file: -4} == ".txt" ]
                        then
			echo "running through the file $file"
				cat $file | awk '{print $2","$1","$3}'|sed 's/Unknown/Brown/' 
                        else
                                echo "make sure it is a text file while using the -a flag"
                        fi
                        ;;
        esac
done


