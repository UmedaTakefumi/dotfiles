#!/bin/bash

DATE_TIME=$(date +%Y-%m-%d_%H-%M-%S)
SAVE_DIRPATH="/opt/netdump/"
LOTATION_SEC="60"
CAP_INTERFACE="enp0s8"

tshark -b  duration:${LOTATION_SEC} -s 0 -i ${CAP_INTERFACE} -w ${}/netdump_${DATE_TIME}.pcap

