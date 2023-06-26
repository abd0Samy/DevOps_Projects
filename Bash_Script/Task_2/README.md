## Task:
#### "A user will create a script listing process information, memory usage, and current disk usage, each command output will be to a file, if all commands are successful, compress the files and send it over the network, including compressing all /var/log/messages files hint use scp for copying files, and provide screenshots for running the script"

#### Requirement1 The user needs to provide run ps, memory, disk usage commands, and output. For the disk usage command, the user needs to print the path and usage percentage only in a human-readable format.

#### Requirement 2 The user needs to validate that all commands are successful and have the correct exit code and validate that the files exist before being compressed. 

#### Requirement 3 Files can be sent to the user's home directory, user may provide the credentials manually, the IP address of the machine, the username, and the destination path needs to be stored as bash variables, and used in a command at at end of the script. Note: follow this url for ssh server setup installation (required for scp) https://www.ionos.com/digitalguide/server/configuration/ubuntu-ssh/.

## Implementation:
##### Script Output:
![script_output](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/482869e2-29f7-4596-8c68-7a2bc6477d53)
##### Files Output:
![files_output](https://github.com/abd0Samy/Sprints_Tasks/assets/26736512/16fabcd0-e283-471d-a85e-bba4ad445426)
