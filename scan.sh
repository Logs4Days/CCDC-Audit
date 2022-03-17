#!/bin/bash
sudo nmap -n -PE -sn -iL targets -oG - | awk '/Up$/{print $2}' > aliveHosts
sudo nmap -n -sV --script vulners --script-args mincvss=5.0 -iL aliveHosts > vulnReport
