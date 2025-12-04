#!/bin/bash
iptables -F
iptables -I INPUT -j NFQUEUE --queue-num 0
