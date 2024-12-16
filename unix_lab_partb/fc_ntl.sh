#include <stdio.h>
 #include <sys/types.h>
 #include <fcntl.h>
 #include <stdlib.h>
 #include <unistd.h>
 int main(int argc, char *argv[]) {
 int fd, accmode, val;
 // Ensure correct number of arguments
 if (argc != 2) {
 fprintf(stderr, "usage: %s <filename>\n", argv[0]);
 exit(1);
 }
 // Open the file in blocking read-write mode
 fd = open(argv[1], O_RDWR | O_CREAT, 0644); // Open file with read-write permissions
 if (fd ==-1) {
 perror("Error opening file");
 exit(1);
 }
 // Get the current file status flags
 val = fcntl(fd, F_GETFL, 0);
 if (val ==-1) {
 perror("fcntl error for fd");
 close(fd);
 exit(1);
 }
 // Print current access mode
 accmode = val & O_ACCMODE; // Mask to get the access mode (O_RDONLY,
 O_WRONLY,O_RDWR)
 if (accmode == O_RDONLY)
 printf("File opened in read-only mode\n");
 else if (accmode == O_WRONLY)
 printf("File opened in write-only mode\n");
 else if (accmode == O_RDWR)
 printf("File opened in read-write mode\n");
 else {
 fprintf(stderr, "Unknown access mode\n");
 close(fd);
 exit(1);
 }
 // Print current flags
if (val & O_APPEND) printf(", append");
 if (val & O_NONBLOCK) printf(", nonblocking");
 if (val & O_SYNC) printf(", synchronous write");
 printf("\n");
 // Now modify the file descriptor to non-blocking mode
 val = O_NONBLOCK; // Add O_NONBLOCKflag
 if (fcntl(fd, F_SETFL, val) ==-1) {
 perror("fcntl error for setting flags");
 close(fd);
 exit(1);
 }
 // Verify the change
 val = fcntl(fd, F_GETFL, 0);
 if (val ==-1) {
 perror("fcntl error for verifying flags");
 close(fd);
 exit(1);
 }
 // Print new flags
 printf("After changing to non-blocking mode:\n");
 if (val & O_NONBLOCK) printf("Non-blocking enabled\n");
 else printf("Non-blocking not enabled\n");
 // Close the file descriptor
 close(fd);
 return 0;
 }
 gcc p22.c
 [UNIXLAB@localhost ~]$ ./a.out p22.c
 Read-Writ