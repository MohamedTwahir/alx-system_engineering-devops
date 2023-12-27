#PID
it is an identification number automatically assigned to each process when created.
A process is an executing instance of a program
# Task 0
Write a Bash script that displays its own PID.
# The ps command
used to provide info abt currently running processes including its PIDs.
basic syntax:
ps [options]
when used with no options it sends 4 items as standard output for atleast two processes:
* PID - Process ID
* TTY -  (which now stands for terminal type but originally stood for teletype) is the name of the console or terminal (i.e., combination of monitor and keyboard) that the user logged into, which can also be found by using the tty command
* TIME - is the amount of CPU (central processing unit) time in minutes and seconds that the process has been running
* CMD - is the name of the command that launched the process.

A common and convenient way of using ps to obtain much more complete information about the processes currently on the system is to use the following:

ps -aux | less

The -a option tells ps to list the processes of all users on the system rather than just those of the current user, with the exception of group leaders and processes not associated with a terminal. A group leader is the first member of a group of related processes.
The -u option tells ps to provide detailed information about each process. The -x option adds to the list processes that have no controlling terminal, such as daemons, which are programs that are launched during booting (i.e., computer startup) and run unobtrusively in the background until they are activated by a particular event or condition.

As the list of processes can be quite long and occupy more than a single screen, the output of ps -aux can be piped (i.e., transferred) to the less command, which lets it be viewed one screenful at a time. The output can be advanced one screen forward by pressing the SPACE bar and one screen backward by pressing the b key.

Among the information that ps -aux provides about each process is the user of the process, the PID, the percentage of CPU used by the process, the percentage of memory used by the process, VSZ (virtual size in kilobytes), RSS (real memory size or resident set size in 1024 byte units), STAT (the process state code), the starting time of the process, the length of time the process has been active and the command that initiated the process. The process state codes include D, uninterruptable sleep; N, low priority; R, runnable (on run queue); S, sleeping; T, traced or stopped; Z, defunct (zombie).
The hyphen preceding is optional hence ps aux | less can be used.

	
The ps (i.e., process status) command is used to provide information about the currently running processes, including their process identification numbers (PIDs).

A process, also referred to as a task, is an executing (i.e., running) instance of a program. Every process is assigned a unique PID by the system.

The basic syntax of ps is

ps [options]

When ps is used without any options, it sends to standard output, which is the display monitor by default, four items of information for at least two processes currently on the system: the shell and ps. A shell is a program that provides the traditional, text-only user interface in Unix-like operating systems for issuing commands and interacting with the system, and it is bash by default on Linux. ps itself is a process and it dies (i.e., is terminated) as soon as its output is displayed.

The four items are labeled PID, TTY, TIME and CMD. TIME is the amount of CPU (central processing unit) time in minutes and seconds that the process has been running. CMD is the name of the command that launched the process.

TTY (which now stands for terminal type but originally stood for teletype) is the name of the console or terminal (i.e., combination of monitor and keyboard) that the user logged into, which can also be found by using the tty command. This information is generally only useful on a multi-user network.

A common and convenient way of using ps to obtain much more complete information about the processes currently on the system is to use the following:

ps -aux | less

The -a option tells ps to list the processes of all users on the system rather than just those of the current user, with the exception of group leaders and processes not associated with a terminal. A group leader is the first member of a group of related processes.
The -u option tells ps to provide detailed information about each process. The -x option adds to the list processes that have no controlling terminal, such as daemons, which are programs that are launched during booting (i.e., computer startup) and run unobtrusively in the background until they are activated by a particular event or condition.

As the list of processes can be quite long and occupy more than a single screen, the output of ps -aux can be piped (i.e., transferred) to the less command, which lets it be viewed one screenful at a time. The output can be advanced one screen forward by pressing the SPACE bar and one screen backward by pressing the b key.

Among the information that ps -aux provides about each process is the user of the process, the PID, the percentage of CPU used by the process, the percentage of memory used by the process, VSZ (virtual size in kilobytes), RSS (real memory size or resident set size in 1024 byte units), STAT (the process state code), the starting time of the process, the length of time the process has been active and the command that initiated the process. The process state codes include D, uninterruptable sleep; N, low priority; R, runnable (on run queue); S, sleeping; T, traced or stopped; Z, defunct (zombie).

In contrast to most commands, the hyphen preceding ps's options is optional, not mandatory. Thus, the following could be (and sometimes is) used in place of the above command:

* ps aux | less

An alternative set of options for viewing all the processes running on a system is

* ps -ef | less

The -e option generates a list of information about every process currently running. The -f option generates a listing that contains fewer items of information for each process than the -l option.

Among the columns displayed by ps -ef, UID contains the username of the account that owns the process (which is usually the same user that started the process) and STIME displays the time the process started, or the starting date if it started more than 24 hours ago.

The processes shown by ps can be limited to those belonging to any given user by piping the output through grep, a filter that is used for searching text. For example, processes belonging to a user with a username adam can be displayed with the following:

* ps -ef | grep adam

The -l option generates a long listing, and when used together with the -e and -f options creates a table with 15 columns:

* ps -efl

The additional columns of most interest are NI and SZ. The former shows the nice value of the process, which determines the priority of the process. The higher the value, the lower the priority. The default nice value is 0 on Linux systems.

The latter displays the size of the process in memory. The value of the field is the number of pages the process is occupying. On Linux systems a page is 4,096 bytes.

ps is most often used to obtain the PID of a malfunctioning process in order to terminate it with the kill command. For example, if the PID of a frozen or crashed program is found to be 1125, the following can usually terminate the process:

* kill 1125

ps -ef or ps -efl can then be used to confirm that the process really has stopped. If it has not, then the more forceful -9 option should be used, i.e.,

* kill -9 1125

The pstree command is similar to ps in that it can be used to show all of the processes on the system along with their PIDs. However, it differs in that it presents its output in a tree diagram that shows how processes are related to each other and in that it provides less detailed information about each process than does ps.

# Task 1
Write a Bash script that displays a list of currently running processes.

Requirements:

Must show all processes, for all users, including those which might not have a TTY
Display in a user-oriented format
Show process hierarchy.

# What are Linux signals?
A signal is an event generated by the UNIX and Linux systems in response to some condition. Upon receipt of a signal a process may take action.
A signal is just like an interrupt; when it is generated at the user level, a call is made to the kernel of the OS, which acts accordingly.
THere are two types of signals:
* Maskable: signalas which can be changed or ignored by the user(Ctrl+C)
* Non-Maskable: signlas which cannot be changed or ignored by the user. These typically occur when the user is signaled for non-recoverable hardware errors.
# Some common signals and associated meanings:
* SIGHUP - Hang-up detected on controlling terminal or death of controlling process.
* SIGINT - Issued if the user sends an interrupt signal(Ctrl + C)
* SIGQUIT - Issued if the user sends a quit signal (Ctrl + D)
* SIGFPE - If a user attempts an illegal mathematical operations.
* SIGKILL - If a proces gets this signal, it must quit immediately  and will not perform any clean-up operations.
* SIGTERM - Software termination signal(sent kill by default)
* SIGALRM - Alarm clock signal (used for timers)

man 7 signal - shows a complete table with a summary of the meaning of each signal.

