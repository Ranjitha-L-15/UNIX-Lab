#!/bin/sh 
a=2 
b=4 
c=3 
val=`expr $a + $b` 
echo "Sum = $val" 
 
val=`expr $a - $b` 
echo "Difference= $val" 
val=`expr $a \* $b` 
echo "Product = $val" 
 
val=`expr $b / $a` 
echo "quotient = $val" 
 
val=`expr $a % $b` 
echo "Modulus = $val" 
if [ $a -eq $b ] 
then 
echo “a is equal to b” 
else 
echo “a is not equal to b” 
fi 
if [ $a -ne $b ] 
then 
echo “a is equal to b” 
else 
echo “a is not equal to b” 
fi 
if [ $a -lt 10 -o $b -gt 20 ]    
then 
echo “true” 
else 
echo “false” 
fi 
 
if [ $a -lt 10 -a $b -gt 20 ]    
then 
echo “True” 
else 
echo “False” 
fi 
  
 
 
[LabExam@ISELAB1 ~]$chmod a+x pr2.sh  /*To execute your shell program, use chmod  a+x program 
name(For changing mode), a+x  means giving execute  permission to all three category of 
people(user,group,others).*/ 
 
[LabExam@ISELAB1 ~]$sh pr2.sh  /*To run the program use any of the methods: sh program name or ./ 
program name*/ 
 
Sum = 8 
Difference = -2 
Product =8 
Quotient =2 
Modulus =2 
a is not equal to b 
a is not equal to b 
True 
False