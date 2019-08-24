# Config-Backupper

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/4a40b08c61e64e598dca919d22a9eee5)](https://app.codacy.com/app/MrMarioMichel/Config-Backupper?utm_source=github.com&utm_medium=referral&utm_content=MrMarioMichel/Config-Backupper&utm_campaign=Badge_Grade_Dashboard)

This script can backup the configs from firewalls and switches.


### Packet dependencies
Check the file **REQUIREMENTS** to see all packet dependencies.

# How to install 
Step 1. ``` git clone https://github.com/MrMarioMichel/Config-Backupper ```  --> this branch should work otherwise download one of  the [newest release](https://github.com/MrMarioMichel/Config-Backupper/releases)

Step 2. ```cd ./Config-Backupper``` --> enter the downloaded repository

Step 3. ```chmod 700 ./setup.sh``` --> make the setup.sh executable

Step 4. ```./setup.sh``` --> start the setup.sh

# How to setup

#### Set days after a config gets compressed (.gz format) [2,5x-3,5x SMALLER] (Numbers only):

Here you can define (in days) when the archived configs get compressed*. (Recommended : 14)


#### Set days after a config gets deleted (Numbers only):

Here you can define (in days) when the archived configs get deleted*. (Recommended : 90)


#### Set days after a logs gets compressed (.gz format) [2,5x-3,5x SMALLER] (Numbers only):

Here you can define (in days) when the archived logs get compressed*. (Recommended : 14)


#### Set days after a logs gets deleted (Numbers only):

Here you can define (in days) when the archived logs get deleted*. (Recommended : 90)


*If you don't want to deleted/commpress the configs/logs is set it to 9999. --> No compression/deletion for 27 Years long enough...

#### Enter bit lenth (Numbers only):

Here you can define the SSH Key used to authenticate at the devices. (Recommended : 4096 or higher)

Use low bit key length (1024 - 2048bits) to speed up the authentication **BUT SECURITY SUFFERS FROM IT !!!**.

#### Enter passphrase (empty for no passphrase):

Just press enter otherwise the script would need everytime it connects to a devices the password. Still want to have a password you will neeed to enter the password in clear text in the ./Modules/Backup module ```sshpass -p "<PASSWORD>" scp -i ./SSH-Keys/Backup-SSH-Key backup@<IP>:<CONFIGFILE>  ./TestConfigFile```

#### Enter same passphrase again:

Again just enter.

### OPTIONAL Setup

#### Website Archive

Launch ./Modules/Setup/WebsiteIndex.sh to hook up the Archive folder to the webserver directory.

# How to configure

## Server side

In ./Devices/\<VENDOR>/\<VENDOR>-Devices.txt you need to enter line by line all IP addresses.

### Syntax
\<IP> --> \<HOSTNAME> ### \<COMMENT>

#### For example

```192.168.1.1 --> AUT-VIE-Firewall-01 ### Firewall is very secure```*

Use a # in front of a line to uncomment a line (This will get ignored from the backup script).

```#10.0.0.1 --> AUT-VIE-Firewall-01-OLD ### Old Firewall```*

*Hostname (will be obtained from the backup file directly) and a comment are optional.



## Client side (Network device)*

Create or use an existing read only profile for a user named "backup" (All in small letters, all togther, no spaces) on the device. This user should get only read rights for highest security. Also add the ./SSH-Keys/Backup-SSH-Key.pub to the user that this key pair can be used to login. See table **Use SSH-Key for Authenictaion** how to do that for each vendor.

### Use SSH-Key for Authenictaion
| Vendor        | Link           | Info  |
| :------------- |:-------------| :-----|
| Fortinet      |[Authenticate a CLI administrator using SSH keys](https://kb.fortinet.com/kb/documentLink.do?externalID=11985)| Also see [Technical Note: How to download a FortiGate configuration file and upload firmware file using secure file copy (SCP)](https://kb.fortinet.com/kb/documentLink.do?externalID=FD43754) |
| DELL       |       | Note : [SSH Key Auth on Dell PowerConnect Switches](https://eengstrom.github.io/musings/ssh-key-auth-powerconnect)  |
| Cisco      |       |   |
| HP         | [Configure the switch for SSH authentication](http://h22208.www2.hpe.com/eginfolib/networking/docs/switches/YA-YB/15-18/5998-8153_yayb_2530_asg/content/ch08s06.html#s_5Configuring_the_switch_for_SSH_authentication)   | Note : See step **Option B: Configuring the switch for client Public-Key SSH authentication** in order to use the client, so in our case the server sided SSH key. |

| Vendor        | Operational
| :------------- |:------------
| Fortinet   | Yes
| DELL       | 
| Cisco      | For sgx00 series
| HP         |

### *Or use the ./Modules/Setup/\<VENDOR>/AutoSetup.sh to setup the client side

Note : Run as sudo !!!


# How to test 

You can test the script (Recommended) befor you run it automaticaly to get the config file with ```scp -P <PORT> -vvv -i ./SSH-Keys/Backup-SSH-Key backup@<IP>:<CONFIGFILE>  ./TestConfigFile```. If that worked and the config file is now stored as **TestConfigFile**. You can delete the **TestConfgiFile** and run the script and see what happens.

### Remote name of the config file

| Name     | File  |  Note | 
| :------------- |:------------- | :----- |
| Fortinet Firewall | sys_config | [Backup over SCP](https://forum.fortinet.com/tm.aspx?m=114055) |
| 2  |  |   |
| 3 |   |   |

# About 

The script uses a (YOU-CHOOSE-IT) bit long SSH Key for authentication. That key must be added to all devices at the user backup in order for the script to get the configs. In the directory ./Log will be all output generated by the script for each day and each vendor.
  
  # Limitaions
  | LimitNr        | Limitation           | Reason  | Will be fixed | 
| :-------------: |:------------- | :----- | :-----: |
| 1  |  If you try to run the scrip more often than once a day the logs of the secound run will also be in the same log file  | Logging has not been designed for this | No
| 2  | If you try to create a bigger SSH-Key than 16384 bit it will not work due to limitations  | There is a limit for the max key lenght in ssh-keygen if the key bits exceeds the of maximum 16384 | Not dependent on the script
| 3 | If you try to run the scrip/module more often than once a minute the configs will get overwritten  | Backup has not been designed for this | No
| 4 | If you run the script more often than once in 120 minutes the output of **Current Configs in Archive** (./Modules/Archive/Checker.sh) will not be correct | Due to a settign in the modul ```configsinarchive=`find ./Archive -maxdepth 2 -type f -name "*.conf" -mmin -120 \| wc -l``` change "-mmin -120" it to a lower value e.g "-mmin -30". This can cause problems getting all configs if they are olded than the defined value (Will show say less **Current Configs in Archive** than realy backuped.)| More likely yes

# Facing Problems

### General :

| Problem     | Solution  |  Description | 
| :------------- |:------------- | :----- |
| ssh: connect to host \<IP-ADDRESS> port 22: Connection timed out | Check if port 22 used for SSH  | If SSH do not use the port 22 (Default) you need to place the host inside the special module of the certain vendor (Problem caused by scp because it automaticaly uses port 22 if no other port is defined) |
| More **Directorys in Archive** than **Lines in Host file** (Can be seen in ./Log/Backup/log\<DATE>.txt)| Just leave the folders as it is or move all to the operating node | This could be caused due to a switch over form the device e.g. fw-01 to fw-02 (Cluster) |
| 3 |   |   |



### Fortinet :

| Problem     | Solution  |  Description | 
| :------------- |:------------- | :----- |
| Sink: 501-Permission Denied 501-Permission Denied | Check if enabled SCP on the Fortinet Device | The script can connect but has problems with the rights to copy the config file. If you don't enable SCP you can run into this problem. |
| 2  |  |   |
| 3 |   |   |

  
