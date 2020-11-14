# <div align="center"><img src="docs/logo.png" alt="icon" width=30> Volunteer_IntegrationAPP</div>

<div align="center">............................................


![flutter](https://img.shields.io/badge/Flutter-Framework-green?logo=flutter)
![Dart](https://img.shields.io/badge/Dart-Language-blue?logo=dart)

</div>

***

### Introducing Volunteer_Integration

...........................

## List of Contents

1. [Features](#features)
2. [Demo](#demo)
3. [Backend Server](#backendserver)
4. [Database](#database)
5. [Architecture](#architecture)
6. [Dependencies](#dependencies)
6. [Security](#security)

## Features

## Demo

## Backend Server

## Database

## Architecture

## Dependencies

## Server Security

**Fail2ban**

>Fail2ban is a tool that helps protect your Linux machine from brute-force and other automated attacks by monitoring the services logs for malicious activity.

**Install**

```
$ sudo apt install fail2ban
```

**Verify Fail2ban is start or not**

>If you see `Active: active (running)`, and  you have Fail2Ban running on your Ubuntu server.

```
$ sudo systemctl status fail2ban
```

**The way to configure Fail2ban is to copy the `jail.conf` to `jail.local` and modify the `.local` file.**

>**Ban Settings**
>
>* bantime is the duration for which the IP is banned.
> 
>> ```bantime=1d```
>
>* maxretry is the number of failures before an IP is banned.
>
>> ```maxretry = 5```
>
>**Email Notifications**
>
>Fail2ban can send email alerts when an IP has been banned.
>
>Change `action = %(action_mw)s` to `action = %(action_mwl)s`
>
>Set `destemail = *********@gmail.com` to your email which you want to receive alert. 

**Each time you edit a configuration file, you need to restart the Fail2ban service for changes to take effect.**

```
$ sudo systemctl restart fail2ban
```

