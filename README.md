# CCDC Recon 
Quickly scan CCDC team networks for open ports, service fingerprinting, and exploit correlation 

## What is CCDC?
CCDC is a cyber security competition put on by a group of voulenteers aimed at giving college students a way to get hands on experience you can't teach in a classroom.

Check out more info here:
https://www.nationalccdc.org/ 

Students are given virtual networks and a written scenairo. They are tasked with defending the network from a professional red team and keeping services up while beeing flooded with business tasks called 'injects'. 

Injects can be anything from "Set a password policy" to "Deploy a working SIEM platform"

## Files
- `01_livehosts.sh` is used to map each team's subnet and create lists of hosts that respond to nmap scans. This way we can perform more intense scans later on only alive hosts
- `02_vulnscan.sh` runs vulners script against the live hosts files. This will lookup all CVEs associated with a given exposed service

## To do 
- [ ] https://github.com/Logs4Days/CCDC-Audit/issues/1
- [ ] https://github.com/Logs4Days/CCDC-Audit/issues/2
