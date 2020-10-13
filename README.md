# autoUserAssign  

## What it Does  
This script will automatically assign a user to the lowest free user on a server from a single `login` account  

## How it Works  
The script loops from 0 to 100 and sees if there is a user logged in with that number.  
When the it reaches a number of an account that is not used, the user then ssh into that account locally.  
If there are no free user accounts, the user is notified and logged out of the `login` account.  

## How to Use It  
Simply append the script to the bottom of the `.bashrc` file of the `login` user and ensure that the account has its SSH public key in all the user accounts `authorized_keys` file  
It is recommended to add the following to the bottom of `sshd_config` to force the `login` user to use bash
```
Match User login
  ForceCommand /bin/bash
```
