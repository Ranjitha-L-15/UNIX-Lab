!/bin/sh 
ps 
echo "ps : process status" 
ps -f 
echo "ps -f : full listing" 
ps -l 
echo "ps -l : along listing showing memory related information" 
ps -u 
echo "ps -u : process of user only" 
ps -e 
echo "ps -e : all process including user and system process" 
ps -a 
echo "ps -a : process of all user including processes not listed with terminal" 
ps -t 
echo "ps -t : processes running on terminal -l along listing showing memory related information" 
 
 
output: 
 [LabExam@ISELAB1 ~]$ sh pr4.sh 
 
[LabExam@ISELAB1 ~]$chmod a+x pr4.sh 
[LabExam@ISELAB1 ~]$sh pr4.sh 
 
  PID TTY          TIME CMD 
 2053 pts/0    00:00:00 bash 
 2422 pts/0    00:00:00 listing.sh 
 2423 pts/0    00:00:00 ps 
ps = process status 
 
UID        PID  PPID  C STIME TTY          TIME CMD 
admin     2053  2043  0 10:46 pts/0    00:00:00 bash 
admin     2422  2053  0 11:03 pts/0    00:00:00 /bin/sh ./listing.sh 
admin     2424  2422  0 11:03 pts/0    00:00:00 ps -f 
ps -f=full listing 
 
F S   UID   PID  PPID  C PRI  NI ADDR SZ WCHAN  TTY          TIME CMD 
0 S  1000  2053  2043  0  80   0 -  2306 wait   pts/0    00:00:00 bash 
0 S  1000  2422  2053  0  80   0 -  2045 wait   pts/0    00:00:00 listing.sh 
0 R  1000  2425  2422  0  80   0 -  2868 -      pts/0    00:00:00 ps 
ps -l=along listing showing memory related information 
 
USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND 
admin     1403  0.0  0.2  54036  9432 tty2     Ssl+ 10:46   0:00 /usr/libexec/gd 
admin     1408  0.0  0.3  84184 12864 tty2     Sl+  10:46   0:00 /usr/libexec/gn 
admin     1510  3.3  3.8 1117800 135452 tty2   Sl+  10:46   0:34 /usr/bin/gnome- 
admin     1538  0.0  1.2 155672 44816 tty2     Sl+  10:46   0:00 /usr/bin/Xwayla 
admin     1571  0.3  0.2  52168  7748 tty2     Sl   10:46   0:03 ibus-daemon --x 
ps -u=process of user only 
   
PID TTY          TIME CMD 
    1 ?        00:00:01 systemd 
    2 ?        00:00:00 kthreadd 
    3 ?        00:00:00 rcu_gp 
    4 ?        00:00:00 rcu_par_gp 
    6 ?        00:00:00 kworker/0:0H-kb 
  ps -e=all process including user and system process 
   
PID TTY          TIME CMD 
  868 tty1     00:00:00 gnome-session-b 
  907 tty1     00:00:03 gnome-shell 
 1136 tty1     00:00:00 Xwayland 
 1163 tty1     00:00:00 ibus-daemon 
 1166 tty1     00:00:00 ibus-dconf 
 ps -a=process of all user including processes not listed with terminal 
  
 PID TTY      STAT   TIME COMMAND 
 2053 pts/0    Ss     0:00 bash 
 2422 pts/0    S+     0:00 /bin/sh ./listing.sh 
 2429 pts/0    R+     0:00 ps -t 
ps -t=processes running on terminal -l along listing showing memoryb related information