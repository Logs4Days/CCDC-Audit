#!/bin/bash

mkdir AliveHosts

# Scan team's first subnet (to be replaced with a generated subnet list later)
for a in `seq 1 9`;
do
  sudo nmap -n -sn 172.31.2${a}.0/24 -oG - | awk '/Up$/{print $2}' > AliveHosts/team${a}
done

# because of weird subnetting, manually doing team10
sudo nmap -n -sn 172.31.30.0/24 -oG - | awk '/Up$/{print $2}' > AliveHosts/team10

# Scan 2nd subnet 
for b in `seq 1 10`;
do
  sudo nmap -n -sn 172.25.${b}.0/24 -oG - | awk '/Up$/{print $2}' > AliveHosts/team${b}
done

# Scan 3rd subnet 
for c in `seq 1 9`;
do
  sudo nmap -n -sn 172.25.2${c}.0/24 -oG - | awk '/Up$/{print $2}' > AliveHosts/team${c}
done

# again manually doing weird subnet 
sudo nmap -n -sn 172.25.30.0/24 -oG - | awk '/Up$/{print $2}' > AliveHosts/team10
