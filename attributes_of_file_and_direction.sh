#!/bin/sh 
file="filename.sh"  
if [ -r $file ]  
then  
echo "File has read permission" 
else 
echo "File does not have read permission" 
fi 
if [ -w $file ]  
then  
echo "File has write permission" 
else 
echo "File does not have write permission"  
fi 
 if [ -x $file ] 
 then 
echo "File has execute permission"  
else  
echo "File does not have execute permission"  
fi 
if [ -f $file ] 
then  
echo "File is an ordinary file" 
else echo "This is a special file" 
fi 
 if [ -d $file ] 
then  
echo "File is a directory"  
 
16 
 
else 
 echo "File is not a directory" 
 fi  
if [ -s $file ] 
 then 
 echo "File size is zero" 
 else  
echo "File size is greater than  zero" 
 fi 
 if [ -e $file ] 
 then  
echo "File exists" 
 else  
echo "File does not exist"  
fi  
if [ -b $file ] 
 then  
echo "File is a block file " 
 else  
echo "File is not a block file"  
fi  
if [ -c $file ] 
 then  
echo "File is a character file " 
 else  
echo "File is not a character file"  
fi  
output: [LabExam@ISELAB1 ~]$ sh pr3.sh 
 
[LabExam@ISELAB1 ~]$chmod a+x pr3.sh 
[LabExam@ISELAB1 ~]$sh pr3.sh 
 
File has read permission 
File has write permission 
File has execute permission 
File is an ordinary file 
File size is greater than zero 
File exists 
File is not a character file is not a block file