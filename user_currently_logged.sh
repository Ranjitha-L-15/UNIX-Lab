#!/bin/sh 
 
echo “User logged in:” 
users 
echo “Current logged in date and time :”  
date 
echo “Currently logged in users:”  
who 
echo “Currently logged in username:”  
whoami 
 
output: 

[LabExam@ISELAB1 ~]$ sh pr6.sh 
[LabExam@ISELAB1 ~]$chmod a+x pr6.sh 
[LabExam@ISELAB1 ~]$sh pr6.sh 
 
 
User logged in: 
UNIX LAB UNIX LAB 
Current logged in date and time: 
Sat sep 29 12:25:30 IST 2018-11-22 
Currently logged in users: 
UNIXLAB TTY1 2018-09-29 11.08 (:0) 
UNIXLAB pts/0 2018-09-29 12.03 (:0.0) 
UNIXLAB pts/1 2018-09-29 12.28 (:0.0) 
Currently logged in username: 
UNIXLAB