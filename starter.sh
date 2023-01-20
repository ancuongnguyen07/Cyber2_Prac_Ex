#! /bin/bash
folder=$1

mkdir $folder 2> /dev/null
rm -r ./template/build 2> /dev/null
cp ./template/* ./$folder
cd ./$folder
mkdir tex