 #include<stdio.h>
 #include<sys/types.h>
 #include<sys/stat.h>
 #include<time.h>
 #include<stdlib.h>
 int main(int argc, char *argv[])
 {
 struct stat sb; // Structure to hold file status information
 // Check if the program has exactly one argument (the file path)
 if (argc != 2) {
 fprintf(stderr, "usage: %s <pathname>\n", argv[0]);
 exit(EXIT_FAILURE); // Exit if wrong number of arguments
 }
 // Get the file status of the specified file
 if (stat(argv[1], &sb) ==-1) {
 perror("stat"); // Print an error message if stat fails
 exit(EXIT_FAILURE); // Exit if stat fails
 }
 // Display the file type based on the file mode (st_mode)
 printf("file type:
 ");
 switch (sb.st_mode & S_IFMT) { // Check the file type from
 st_mode
 case S_IFBLK: // Block device
 printf("block device file\n");
 break;
 case S_IFCHR: // Character device
printf("character device file\n");
 break;
 case S_IFDIR: // Directory
 printf("directory\n");
 break;
 case S_IFIFO: // FIFO (named pipe)
 printf("FIFO/pipe\n");
 break;
 case S_IFLNK: // Symbolic link
 printf("symlink\n");
 break;
 case S_IFREG: // Regular file
 printf("regular file\n");
 break;
 case S_IFSOCK: // Socket
 printf("socket\n");
 break;
 default:
 // Default case for unknown types (but it's
 handled as a regular file)
 printf("unknown file type\n");
 break;
 }
 // Display the inode number
 printf("Inode number: %ld\n", (long) sb.st_ino);
 // Display the file mode (permissions in octal)
 printf("Mode:
 %lo(octal)\n", (unsigned long) sb.st_mode);
 // Display the number of blocks allocated for the file
 printf("Blocks allocated: %lld\n", (long long) sb.st_blocks);
 // Exit successfully
 exit(EXIT_SUCCESS);
 }