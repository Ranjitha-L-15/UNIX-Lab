 #include<sys/types.h>
 #include<sys/stat.h>
 #include<stdio.h>
 int main()
 {
 mode_t oldMask,newMask;
 oldMask=umask((mode_t)0);
 printf("\n Old mask = %on",(int)oldMask);
 if(oldMask & S_IRGRP){
 printf("\nChanging group read permission from Masked to unmasked.n");
 oldMask=(oldMask ^ S_IRGRP);/* ^ Operator is binar XOR operator, copies the bit if it is set in
 one operand but not in both. Exclusive or is a logical operator that outputs true only when inputs
 differ*/
 }
 newMask=(oldMask|S_IWGRP|S_IXGRP);
 umask(newMask);
 printf("\nNew MAsk = %onn",(int)newMask);
 printf("\nThe file mode creation mask now specifies:nn");
 printf("\n Group read permission UNMASKEDn");
 printf("\n Group write permission MASKEDn");
 printf("\n Group execute permission MASKEDn");
 oldMask=umask((mode_t)0);
 printf("\n Old mask = %on",(int)oldMask);
if(oldMask & S_IRUSR){
 printf("\nChanging user read permission from Masked to unmasked.n");
 oldMask=(oldMask ^ S_IRUSR);
 }
 newMask=(oldMask|S_IWUSR|S_IXUSR);
 umask(newMask);
 printf("\nNew MAsk = %onn",(int)newMask);
 printf("\nThe file mode creation mask now specifies:nn");
 printf("\n User read permission UNMASKEDn");
 printf("\n User write permission MASKEDn");
 printf("\n User execute permission MASKEDn");
 oldMask=umask((mode_t)0);
 printf("\n Old mask = %on",(int)oldMask);
 if(oldMask & S_IROTH){
 printf("\nChanging Other read permission from Masked to unmasked.n");
 oldMask=(oldMask ^ S_IROTH);
 }
 newMask=(oldMask|S_IWOTH|S_IXOTH);
 umask(newMask);
 printf("\nNew MAsk = %onn",(int)newMask);
 printf("\nThe file mode creation mask now specifies:nn");
 printf("\n Other read permission UNMASKEDn");
 printf("\n Other write permission MASKEDn");
 printf("\n Other execute permission MASKEDn");
 }
 Output:
 gcc p77.c
 [UNIXLAB@localhost ~]$ ./a.out p77.c
 Old mask = 2n
 NewMAsk=32nn
 The file mode creation mask now specifies:nn
 Group read permission UNMASKEDn
 Group write permission MASKEDn
 Group execute permission MASKEDn
 Old mask = 32n
 NewMAsk=332nn
 The file mode creation mask now specifies:nn
 User read permission UNMASKEDn
 User write permission MASKEDn
 User execute permission MASKEDn
Old mask = 332n
 NewMAsk=333nn
 The file mode creation mask now specifies:nn
 Other read permission UNMASKEDn
 Other write permission MASKEDn
 Other execute permission sMASKEDnss