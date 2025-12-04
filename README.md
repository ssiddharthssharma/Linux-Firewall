# Hybrid Firewall (H3 Architecture)

This project implements an adaptive, hybrid firewall that combines a Linux Kernel Module for fast-path packet enforcement with a Python-based user-space inspection engine for intelligent threat analysis. The goal is to provide a flexible, extensible, and high-performance security pipeline capable of dynamically updating kernel-level rules based on real-time user-space analysis.

---

## Overview

The firewall intercepts traffic early in the network stack using a Netfilter hook inside a custom Linux Kernel Module. The kernel module maintains a dynamic rule table used to immediately accept or drop packets without involving user space. Any packet that does not match an existing rule is forwarded to NFQUEUE, where a Python engine inspects it using Scapy.

If malicious behavior is detected in user space, the Python engine sends a new rule back to the kernel through a Generic Netlink channel. This allows the firewall to “learn” from traffic in real time and block subsequent packets at kernel speed. This design demonstrates how kernel-space efficiency and user-space flexibility can be combined to create a next-generation firewall architecture.

---

## Features

- Kernel module intercepts packets via Netfilter (IPv4 PRE_ROUTING)
- Fast-path rule table for immediate DROP/ACCEPT decisions
- User-space deep packet inspection using NFQUEUE and Scapy
- Generic Netlink interface for dynamic rule injection
- Example rule engine implementing SYN flood detection
- Clean separation between kernel enforcement and Python intelligence
- Modular structure for easy extension or experimentation

---
