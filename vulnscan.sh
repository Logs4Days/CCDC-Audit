#!/bin/bash

mkdir Reports 

for i in `seq 1 10`;
do
  sudo nmap -n -sV --script vulners -iL AliveHosts/team${i} > Reports/team${i}
done
