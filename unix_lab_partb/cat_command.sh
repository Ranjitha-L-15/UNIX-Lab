 
#include<sys/types.h> 
#include<sys/stat.h> 
#include<stdio.h> 
#include<fcntl.h> 
main( int argc,char *argv[3] ) 
{ 
int fd,i; 
char buf[2]; 
fd=open(argv[1],O_RDONLY,0777); 
if(fd==-argc) 
{ 
printf("file open error"); 
} 
else 
{ 
while((i=read(fd,buf,1))>0) 
{ 
printf("%c",buf[0]); 
} 
close(fd); 
} 
} 
 
Output: [UNIXLAB@localhost ~]$ gcc -0 p.out prgm1.c 
UNIXLAB@localhost ~]$cat >h.txt /*creating a text file*/ 
hello 
UNIXLAB@localhost ~]$./p.out h.txt /*appending text file to display contents on the terminal without 
using cat command*/ 
hello