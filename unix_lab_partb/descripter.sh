 #include <stdlib.h>
 #include <unistd.h>
 #include <sys/types.h>
 #include <sys/stat.h>
 #include <fcntl.h>
 #include <stdio.h>
 int main(int argc, char **argv) {
 int fd, nfd;
 if (argc < 2) {
 printf("usage: %s pathname\n", argv[0]);
 exit(1);
 }
 // Open the file Foo with read-only permission
 if ((fd = open(argv[1], O_RDONLY)) < 0) {
 perror("Problem in opening the file");
 exit(1);
 }
 // Duplicate the file descriptor fd to standard input (fd 0)
 if ((nfd = fcntl(fd, F_DUPFD, 0)) ==-1) {
 perror("Problem in duplicating fd");
 exit(1);
 }
 //By passing 0 as the argument, we ensure that fd is duplicated into the standard input,
 effectively making fd the source for reading input from file descriptor 0 (standard input).
 printf("File descriptor %d duplicated to standard input (fd 0).\n", fd);
 // Now, the file is available on standard input. You can read from it
// using standard input functions like getchar(), scanf(), etc.
 // For example, reading one character from standard input:
 char ch;
 if (read(0, &ch, 1) == 1) {
 printf("Read character from file: %c\n", ch);
 } else {
 perror("Error reading from standard input");
 }
 // Close the original file descriptor and the duplicated fd
 close(fd);
 close(nfd);
 return 0;
 }
