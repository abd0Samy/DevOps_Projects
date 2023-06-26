#!/bin/bash

whereis_arg() {
        echo "Please Add Arguments After $0";echo "Example: "; echo -e "\t#$0 admin master /home/admin/"
}


if [ $# -eq 0 ]
  then
    whereis_arg
    exit 1
fi

username=$1
hostname=$2
pathname=$3

#declare the DATE variable to know when the script was executed
DATE=`date +%Y%m%d%H%M%S`
echo; echo "************************  Running script '$0' at `date`  ***************************"; echo

# check if there is a log directory created, and create one if it doesn't exit with path ~/sprints/systeminformation/log/ and go to the same directory.
if [ ! -d "~/sprints/systeminformation/log/" ]; then
        echo -n `date +%Y%m%d`; echo -ne " `date +%H:%M:%S`"; echo -e "\tCreating ~/sprints/systeminformation/log directory"
        mkdir -p ~/sprints/systeminformation/log/; cd ~/sprints/systeminformation/log/
        if [ $? -eq 0 ]; then echo "success";
        else echo "failed"; fi
fi

#declare the name of the files that will contain the output/error of the 3 parameters {process, memory, disks}
#20230426 07:35:28.229: Check all nodes online
#20230426 07:35:28.445: | PASS
echo -n `date +%Y%m%d`; echo -ne " `date +%H:%M:%S`";  echo -e "\tDeclaring the name of the files that will contain the output/error of the 3 parameters {process, memory, disks}";
process_filename=$DATE-process.log;
        if [ $? -eq 0 ]; then echo "$process_filename";
        else echo "failed to declare filename $process_filename"; exit 1 ; fi
memory_filename=$DATE-memory.log;
        if [ $? -eq 0 ]; then echo "$memory_filename";
        else echo "failed to declare filename $memory_filename"; exit 1 ; fi
disks_filename=$DATE-disks.log;
        if [ $? -eq 0 ]; then echo "$disks_filename";
        else echo "failed to declare filename $disks_filename"; exit 1 ; fi
process_error_filename=$DATE-process-error.log; if [ $? -eq 0 ];
        then echo "$process_error_filename";
        else echo "failed to declare filename $process_error_filename"; exit 1 ; fi
memory_error_filename=$DATE-memory-error.log; if [ $? -eq 0 ];
        then echo "$memory_error_filename";
        else echo "failed to declare filename $memory_error_filename"; exit 1 ; fi
disks_error_filename=$DATE-disks-error.log; if [ $? -eq 0 ];
        then echo "$disks_error_filename";
        else echo "failed to declare filename $disks_error_filename"; exit 1 ; fi
echo "success"

#execute commands
# declare the exit_code variable:
exit_code=0
# execute process command:
echo -n `date +%Y%m%d`; echo -ne " `date +%H:%M:%S`"; echo -e "\tExecuting process command and saving output to ~/sprints/systeminformation/log/$process_filename";
ps aux 1> $process_filename 2> $process_error_filename; exit_code_process=$?; if [ $exit_code_process -ne 0 ]; then $exit_code+=1; echo "WARNING: The process command has returned an error, please check the "$process_error_filename" file for details"; ls -ltrh $process_error_filename; else echo "success"; fi
# execute memory command:
echo -n `date +%Y%m%d`; echo -ne " `date +%H:%M:%S`"; echo -e "\tExecuting memory command and saving output to ~/sprints/systeminformation/log/$memory_filename"
free -m 1>> $memory_filename 2>> $memory_error_filename ; exit_code_memory=$?; if [ $exit_code_memory -ne 0 ]; then $exit_code+=1; echo "WARNING: The memory command has returned an error, please check the "$memory_error_filename" file for details"; ls -ltrh $memory_error_filename; else echo "success";fi
# execute disks command:
echo -n `date +%Y%m%d`; echo -ne " `date +%H:%M:%S`"; echo -e "\tExecuting disks command and saving output to ~/sprints/systeminformation/log/$disks_filename"
df -h | awk '{print $5"\t"$6}' 1>> $disks_filename 2>> $disks_error_filename ; exit_code_disks=$?; if [ $exit_code_disks -ne 0 ]; then $exit_code+=1; echo "WARNING: The disks command has returned an error, please check the "$disks_error_filename" file for details"; ls -ltrh $disks_error_filename; else echo "success";fi

#validate that all commands have been scucessful, if any failed, then exit with exit code 1
echo -n `date +%Y%m%d`; echo -ne " `date +%H:%M:%S`"; echo -e "\tValidating commands execution"
if [ $exit_code -ne 0 ]; then
        echo "ERROR: There is a non-zero exit code for one of the commands, please check the above suggested error logs for further details";
        exit 1
fi
echo "success"

#validate that files exit
echo -n `date +%Y%m%d`; echo -ne " `date +%H:%M:%S`"; echo -e "\tValidating that all files exist"
does_file_exit=0
if [ ! -f "$process_filename" ]; then does_file_exit+=1; echo "WARNING: file with name $process_filename doesn't exist under directoy ~/sprints/systeminformation/log/"; fi
if [ ! -f "$memory_filename" ]; then does_file_exit+=1; echo "WARNING: file with name $memory_filename doesn't exist under directoy ~/sprints/systeminformation/log/"; fi
if [ ! -f "$disks_filename" ];then does_file_exit+=1; echo "WARNING: file with name $disks_filename doesn't exist under directoy ~/sprints/systeminformation/log/"; fi

if [ $does_file_exit -ne 0 ]; then
        echo "ERROR: There isi 1 or more of the log files that don't/doesn't exit, cannot proceed with script!"; echo "These are all of the output log files existing"; ls -ltrh *[sy].log
        exit 1
fi
echo "$(ls -ltrh ~/sprints/systeminformation/log/$DATE*)"
echo "success"

#copy the /var/log/messages to log directory, package all files alongside the /var/log/messages in "prefix-systeminformation.log.tar", adding the date as the prefix and then compress it using gzip utility.
echo -n `date +%Y%m%d`; echo -ne " `date +%H:%M:%S`"; echo -e "\tCopying /var/log/messages to ~/sprints/systeminformation/log directory"
sudo cp /var/log/messages ~/sprints/systeminformation/log/$DATE-messages.log
if [ $? -eq 0 ]; then ls -ltrh ~/sprints/systeminformation/log/$DATE-messages.log ;echo "success"; else echo failed; fi
echo -n `date +%Y%m%d`; echo -ne " `date +%H:%M:%S`"; echo -e "\tPackaging and compressing the 4 log files into /home/admin/sprints/systeminformation/log/$DATE-systeminformation.log.tar"
sudo tar czvfP $DATE-systeminformation.log.tar ~/sprints/systeminformation/log/$DATE*[ys].log;
if [ $? -eq 0 ]; then ls -ltrh /home/admin/sprints/systeminformation/log/$DATE-systeminformation.log.tar;echo "success"; else echo failed ;fi

#transfering the directory to another host and user where host and user are given as arguments to the script
echo -n `date +%Y%m%d`; echo -ne " `date +%H:%M:%S`"; echo -e "\tTransfering the compressed file to $hostname node at path=$pathname"
scp /home/admin/sprints/systeminformation/log/$DATE-systeminformation.log.tar $username@$hostname:$pathname
if [ $? -eq 0 ]; then ssh $username@$hostname ls -ltrh $pathname/$DATE-systeminformation.log.tar;echo "success"; else echo failed ;fi
