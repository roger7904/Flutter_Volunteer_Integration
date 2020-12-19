# <div align="center"><img src="docs/logo.png" alt="icon" width=30> Volunteer_IntegrationAPP</div>

<div align="center">............................................


![flutter](https://img.shields.io/badge/Flutter-Framework-green?logo=flutter)
![Dart](https://img.shields.io/badge/Dart-Language-blue?logo=dart)

</div>

***

### Introducing Volunteer_Integration

...........................

## List of Contents

1. [Features](#1)
2. [Demo](#2)
3. [Backend Server](#3)
4. [Database](#4)
5. [Architecture](#5)
6. [Dependencies](#6)
7. [Backend Server Security](#7)

<h2 id="41">Features</h2>

## Demo

## 3.Backend Server
firebase and build by self

socket?

pushnotification firebase?

calculate 

schedule

docker k8s? CI/CD

## 4.Database
firebase

sqlite

## 5.Architecture

## 6.Dependencies

## 7.Backend Server Security

>**Fail2ban**
>
>>Fail2ban is a tool that helps protect your Linux machine from brute-force and other automated attacks by monitoring the services logs for malicious activity.
>
>**Install**
>
>```
>$ sudo apt install fail2ban
>```
>
>**Verify Fail2ban is start or not**
>
>>If you see `Active: active (running)`, and  you have Fail2Ban running on your Ubuntu server.
>
>```
>$ sudo systemctl status fail2ban
>```
>
>**The way to configure Fail2ban is to copy the `jail.conf` to `jail.local` and modify the `.local` file.**
>
>>**Ban Settings**
>>
>>* bantime is the duration for which the IP is banned.
>> 
>>> ```bantime=1d```
>>
>>* maxretry is the number of failures before an IP is banned.
>>
>>> ```maxretry = 5```
>>
>>**Email Notifications**
>>
>>Fail2ban can send email alerts when an IP has been banned.
>>
>>Change `action = %(action_mw)s` to `action = %(action_mwl)s`
>>
>>Set `destemail = *********@gmail.com` to your email which you want to receive alert. 
>
>**Each time you edit a configuration file, you need to restart the Fail2ban service for changes to take effect.**
>
>```
>$ sudo systemctl restart fail2ban
>```
---
>**Shell Script**
>>We also write shell by ourself to strengthen host protection.
>>
>**banip.sh**
>>We write this script to ban the ip trying to connect to our host via ssh.
>```
># Define the newly added ip and historical ip files.
>ban="/tmp/bannedhosts.txt"
>history="/tmp/history.txt"
>GREP_PARAM="[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+"
>
># Find out the attacking host IP.
>sudo grep "Failed password for" /var/log/auth.log | grep -Po "[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+" \
>| sort | uniq > /tmp/attack.txt
>
># Add the newly added host IP to the defined file.
>touch $history # Change timestamp.
>sort /tmp/attack.txt | uniq > /tmp/ip1
>sort $history | uniq > /tmp/ip2
>comm -23 /tmp/ip[1-2] > $ban   
>rm -rf /tmp/ip[1-2]
>rm -rf /tmp/attack.*
>
># Use iptables to block the attacking host IP. 
>for i in $( grep $GREP_PARAM $ban ) 
>do
>echo "Deny access to host: $i"
>$iptables -A INPUT -s $i -j DROP
>$iptables -A OUTPUT -d $i -j DROP
>>done
>
># Add the processed IP list to the history file.
>cat $ban >> $history
>sort $history | uniq > /tmp/history.tmp
>mv -f /tmp/history.tmp $history
>rm -rf $ban
>```
>Make this file executable
>```
>$ chmod 755 /{your file path}/banip.sh
>```
>You can simply use this command to run this script.
>```
>$ bash banip.sh
>```
>or put in crontab for routine execution.(This example lets it run every five minutes.)
>```
>$ vim /etc/crontab
>```
>```
># Example of job definition:
># .---------------- minute (0 - 59)
># |  .------------- hour (0 - 23)
># |  |  .---------- day of month (1 - 31)
># |  |  |  .------- month (1 - 12) OR jan,feb,mar,apr ...
># |  |  |  |  .---- day of week (0 - 6) (Sunday=0 or 7) OR sun,mon,tue,wed,thu,fri,sat
># |  |  |  |  |
># *  *  *  *  * user-name command to be executed
>17 *    * * *   root    cd / && run-parts --report /etc/cron.hourly
>25 6    * * *   root    test -x /usr/sbin/anacron || ( cd / && run-parts --report /etc/cron.daily )
>47 6    * * 7   root    test -x /usr/sbin/anacron || ( cd / && run-parts --report /etc/cron.weekly )
>52 6    1 * *   root    test -x /usr/sbin/anacron || ( cd / && run-parts --report /etc/cron.monthly )
># add this line
>5  *    * * *   root    /{your file path}/banip.sh > /var/log/banip.log
>```
