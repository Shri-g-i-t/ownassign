#!/bin/bash
if [ $1 ]&& [ $2 ]&& [ $3 ]
then
    mkdir -p $1 
    if test -f $1/$2;then
        echo "$2 exists!!!"
    else
        touch $1/$2 
        echo  $3 > $2
    fi

    elif [ $1 ]&& [ $2 ]&& [ -z $3 ]
    then
        mkdir -p $1
        if test -f $1/$2;then
            echo "$2 exists!!!"
            exit 1
        else
            touch $1/$2 
            echo  $3 > $2
        fi

        echo "Content : "
        read -r content
        echo  $content > $2
    
    elif [ $1 ] && [ -z $2 ]
    then
         mkdir -p $1
         echo "File name : "
         read -r file_name

         if test -f $1/$file_name;then
            echo "$file_name exists!!!"
            exit 1
         else
            touch $1/$file_name 
            echo "Content : "
            read -r content
            echo  $content > $file_name
         fi

     elif [ $# -eq 0 ]
     then
         echo "Path : "
         read -r path
         mkdir -p $path
         echo "File name : "
         read -r file_name

         if test -f $path/$file_name;then
            echo "$file_name exists!!!"
            exit 1
         else
            touch $path/$file_name 
            echo "Content : "
            read -r content
            echo  $content > $file_name
         fi 
    fi
    
