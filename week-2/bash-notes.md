# TASK 2


Access Wargames labs available on the following link: https://overthewire.org/wargames/ and on level Bandit solve tasks up to level 10      

After completing each level take screenshoot of your screen as a confirmation of successfully completed level      
# 
## Level 0
The goal of this level is for you to log into the game using SSH. The host to which you need to connect is bandit.labs.overthewire.org, on port 2220. The username is bandit0 and the password is bandit0. Once logged in, go to the Level 1 page to find out how to beat Level 1.   

#### New Commands used:   
- ssh bandit0@bandit.labs.overthewire.org -p 2220   
- ls

ssh to connect to the server     
-p is the option for ssh to set the specific port you're connecting to   
ls to list out the files in the positioned directory 


![Level0_completed](/week-2/evidence/Level0.png)
#
## Level 1
The password for the next level is stored in a file called readme located in the home directory. Use this password to log into bandit1 using SSH. Whenever you find a password for a level, use SSH (on port 2220) to log into that level and continue the game.   

#### New Commands used:  
- cat readme   

cat used to list out the content of the file   
Password found in the readme file was used to connect to the same server as user bandit1   

![Level1_completed](/week-2/evidence/level1.png)
#
## Level 2
The password for the next level is stored in a file called - located in the home directory   

#### New Commands used:  
- cat < -

Tried with "cat -" nothing happened. Researched how to open dash named file in linux and found solution [here](https://stackoverflow.com/questions/42187323/how-to-open-a-dashed-filename-using-terminal)

![Level2_completed](/week-2/evidence/Level2.png)
#
## Level 3
The password for the next level is stored in a file called spaces in this filename located in the home directory   
#### New Commands used:   
- cat "spaces in this filename"   

By using quotation marks you can specify the directory or file name that has spaces in the name. Best practice is to use character _ or - instead of " " while naming the directory/file.
![Level3_completed](/week-2/evidence/Level3.png)
#
## Level 4
The password for the next level is stored in a hidden file in the inhere directory.   
#### New Commands used:   
- ls -la   

By adding arguments la we're able to list out all of the files in the directory.

![Level4_completed](/week-2/evidence/Level4.png)
#
## Level 5
The password for the next level is stored in the only human-readable file in the inhere directory. Tip: if your terminal is messed up, try the “reset” command.   
#### New Commands used:   
- file <-file*

Hint says "only human-readable file" so I've researched how to find the type of the file, found solution [here](https://www.geeksforgeeks.org/file-command-in-linux-with-examples/). Running this command showed how only one file is in ASCII text. 5 minutes research > 20 sec manualy checking files :).
Felt like opening the files one by one was not the proper solution here, though there are handful of files and it could be easily done here, I've tried to imagine a scenario where there's 100s of files.

![Level5_completed](/week-2/evidence/Level5.png)

#
## Level 6
The password for the next level is stored in a file somewhere under the inhere directory and has all of the following properties:   

-human-readable   
-1033 bytes in size   
-not executable   
#### New Commands used:   
- find maybehere* -size 1033c

find comand helped me narrow down search instead of opening directory by directory and then file by file, so I've used find command with argument maybehere which is the shared part of the directory name and used wildcard * to cover all of the folders, then I had to narrow down the search and though the simplest way out the 3 given in the task was the size. So I've used size argument with the actual value. Bytes are noted as "c", kilobytes are "k", megabytes "m", etc. We can also use + or - so search by greater or lower than indicated value.

![Level6_completed](/week-2/evidence/Level6.png)

#
## Level 7
The password for the next level is stored somewhere on the server and has all of the following properties:   

-owned by user bandit7   
-owned by group bandit6   
-33 bytes in size   
#### New Commands used:   
- reused find command

Researched on type of arguments I can use with find command [here](https://phoenixnap.com/kb/guide-linux-find-command), and found that I can search by -user or -group so I've used both and found a single file with user bandit7 and group bandit6 that my user has permissions to open. Password was located there.

![Level7_completed](/week-2/evidence/Level7.png)

#
## Level 8
The password for the next level is stored in the file data.txt next to the word millionth   
#### New Commands used:   
-grep "millionth" data.txt

Used command grep to find a specific text be it in the file, previous commands used, etc. I gave it parameter "millionth" from the task and pointed it to the file in which to search for.

![Level8_completed](/week-2/evidence/Level8.png)
#
## Level 9
The password for the next level is stored in the file data.txt and is the only line of text that occurs only once   
#### New Commands used:   
-cat data.txt| sort | uniq -u

cat is not a new command that I've used but the arguments sort and uniq are. I've researched on hwo to list out uniq line of text from the file and found command uniq. By just running uniq it got rid of duplicate values and gave me all of the unique values, but I've ended up with x amount of lines. I found parameter -u to be used by no luck there again. So I've researched a bit on file manipulation and found solution [here](https://www.futurelearn.com/info/courses/linux-for-bioinformatics/0/steps/201955).

![Level9_completed](/week-2/evidence/level9.png)

#
## Level 10
The password for the next level is stored in the file data.txt in one of the few human-readable strings, preceded by several ‘=’ characters.   
#### New Commands used: 
-strings data.txt | grep "=="

Tried using just grep '=.*=' data.txt, with expession .* to give me everything in between the equal sign. But since the file is not plain text file I had no luck. I've researched a bit on how to [search for text](https://serverfault.com/questions/51477/linux-command-to-find-strings-in-binary-or-non-ascii-file) in binary type file and found command strings, so I've used a combination of strings and grep commands to get the password from the file.

![Level10_completed](/week-2/evidence/level10.png)