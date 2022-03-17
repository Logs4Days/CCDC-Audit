#!/bin/bash

# Gather list of alive hosts
sudo nmap -n -sn -iL targets -oG - | awk '/Up$/{print $2}' > aliveHosts

# Assess vulns 
sudo nmap -n -sV --script vulners --script-args mincvss=5.0 -iL aliveHosts > vulners.txt
