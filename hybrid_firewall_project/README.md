# Hybrid Firewall (H3 Architecture)

This project implements a self-learning hybrid firewall using:
1. A Linux Kernel Module (Netfilter)
2. Python-based packet inspection (NFQUEUE + Scapy)
3. Generic Netlink for dynamic rule updates

## Features
- Kernel fast-path enforcement
- Python threat analysis engine
- Dynamic rule injection
- SYN flood detection
- Modular and clean design

## Project Structure
(omitted here for brevity)

## Build
make

## Load Module
sudo insmod firewall_lkm.ko

## Setup NFQUEUE
sudo bash scripts/setup_iptables.sh

## Run Firewall
sudo python3 python/hybrid_firewall.py

## Unload
sudo rmmod firewall_lkm
sudo bash scripts/teardown_iptables.sh

## Requirements
pip install scapy netfilterqueue pyroute2
