#! /bin/bash
echo -e " ------------------------------------------- "
echo -e " 	   Library Management System	            "
echo -e "	   	**************                      "
echo -e "	    Powered By Team Quad                  "
echo -e " ------------------------------------------- "

while [ "$done" != "true" ]
do


echo "1. Author List"
echo "2. Insert Author Record"
echo "3. Delete Author Record"
echo "4. Modify Author Record"
echo "5. Searching Author"
echo "6. Exit"

read  ch

case $ch in

1) echo -e "Show All List\n"
   echo  -e "ID \t Name \t Book Name \t Book ID \t Issue Date \t Contact \t Mail \t Address"
cat lib
echo -e "\n";;

2) echo "Enter ID"
read id
echo "Enter Author Name"
read mn
echo "Enter Book Name"
read bk
echo "Enter Book ID"
read bi
echo "Enter Issue Date"
read idt
echo "Enter Contact number"
read cn
echo "Enter E-Mail"
read em
echo "Enter Address"
read ad

echo -e "Insert Complete Record\n"
record="$id $mn $bk $bi $idt $cn $em $ad "

echo $record>>lib
echo -e "\n";;

3) echo "Enter Id number"
read id
grep ^$id lib
if [ $? -ne 0 ];then
echo "Record for id Number doesn't Exist"
else
grep -v $id lib>>tmp
cp tmp lib
echo -e "Deletion Complete\n"
fi
;;



4) echo "Enter ID Number"
read id1
if [ $? -ne 0 ];then
echo "Record for Id Number doesn't Exist"
else
echo "Modify ID"
read id
echo "Modify Author Name"
read mn
echo "Modify Book Name"
read bk
echo "Modify Book ID"
read bi
echo "Modify Issue Date"
read idt
echo "Modify Contact number"
read cn
echo "Modify E-Mail"
read em
echo "Modify Address"
read ad

echo -e "Modifiy  Complete Record\n"
record="$id $mn $bk $bi $idt $cn $em $ad "
var='grep -n ^ $id1 lib | cut -c 1'
echo $var
var1='expr $var - 1'
head -$var1 lib>temp
echo $record>>temp
var3='wc -1 < lib'
var2='expr $var3 - $var '
tail -$var2 lib>>temp
cp temp lib
fi
echo -e  "\n"
;;


5) echo "Enter Id number of author"
read id
 echo  -e "ID \t Name \t Book Name \t Book ID \t Contact \t Mail \t Address"
 grep ^$id lib
 echo -e "\n"
 ;;
 
 6)
done="true"
 ;;
 * ) echo "Enter Right Choice"
 esac
done
 




