#include <stdio.h>
 #include <stdlib.h>
 int main() {
 FILE *fp;
 char ch;
 int num;
 long length;
 printf("Enter the value of num: ");
 scanf("%d", &num);
 fp = fopen("file.txt", "r");
 if (fp == NULL) {
 puts("Cannot open this file");
 exit(1);
 }
 // Get the length of the file
 fseek(fp, 0, SEEK_END); // Move to the end of the file
 length = ftell(fp);
 // Get the current position (file length)
 if (num > length) {
 puts("Number is greater than file length.");
 fclose(fp);
 exit(1);
 }
 // Seek to the position num characters before the end of the file
 fseek(fp, (length- num), SEEK_SET);
 // Print the characters from that position
 do {
 ch = fgetc(fp);
 putchar(ch);
 } while (ch != EOF);
 fclose(fp);
 return 0;
 }
