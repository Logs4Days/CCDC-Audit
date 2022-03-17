#!/bin/bash

# Gather list of alive hosts
sudo nmap -n -sn -iL targets -oG - | awk '/Up$/{print $2}' > Reports/aliveHosts

# Heavy port scan 
sudo nmap -n -p 1-9999 -iL Reports/aliveHosts > Reports/openPorts


# Assess vulns 
sudo nmap -n -sV --script vulners --script-args mincvss=5.0 -iL Reports/aliveHosts > Reports/vulners
