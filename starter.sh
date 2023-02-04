#! /bin/bash
folder=$1

mkdir $folder 2> /dev/null
rm -r ./template/build 2> /dev/null
cp ./template/* ./$folder
cd ./$folder
mkdir tex
mkdir figures
cd ./tex
for i in {1..$2}
do
    touch task$i.tex
done
cd ../