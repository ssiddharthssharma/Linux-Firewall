# Linux Kernel Firewall  
Advanced Packet Filtering using Netfilter, nfqueue, and Linux Kernel Modules

## 📌 Overview
Linux Kernel Firewall is a custom packet filtering and enforcement engine built on top of the Linux networking stack using:

- **Netfilter Hooks** (pre-routing, forward, post-routing)
- **nfqueue** for user-space packet inspection
- **Linux Kernel Modules (LKM)** for in-kernel processing
- **iptables** for traffic redirection and queueing

This project demonstrates how modern Linux firewalls intercept, inspect, and control packet flow at the kernel level.

## ✨ Key Features
- Kernel-level packet interception using **Netfilter hooks**
- Real-time user-space inspection using **nfqueue**
- Custom rule enforcement via LKM
- Supports filtering of TCP, UDP, and ICMP traffic
- Logging system for packet metadata collection
- Modular architecture for adding new filtering logic

## 🏗 Architecture

### ASCII Diagram
```
        ┌──────────────────────────┐
        │        Network           │
        └─────────────┬────────────┘
                      │
               ↓ Incoming Packet
                      │
        ┌─────────────▼────────────┐
        │     Netfilter Hooks      │
        │ (PREROUTING / INPUT / …) │
        └─────────────┬────────────┘
                      │
               ┌──────▼──────┐
               │   nfqueue   │  → User-space analysis
               └──────┬──────┘
                      │
             ┌────────▼────────┐
             │  Kernel Module  │  → Rule Enforcement
             └────────┬────────┘
                      │
                 Packet Decision
                      │
        ┌─────────────▼────────────┐
        │ ACCEPT   DROP   MODIFY   │
        └──────────────────────────┘
```

## 🔧 Technologies Used
- C  
- Linux Kernel Modules  
- Netfilter / iptables  
- nfqueue  
- tcpdump  

## 📥 Installation & Setup
```bash
git clone https://github.com/ssiddharthssharma/Linux-Firewall.git
cd Linux-Firewall
make
sudo insmod firewall.ko
sudo iptables -I INPUT -j NFQUEUE --queue-num 0
```

## 🚀 Usage
Monitor realtime logs:
```bash
dmesg -w
```

## 📌 Future Enhancements
- Rate limiting
- Conntrack support
- CLI rule manager
- eBPF/XDP version

## 👤 Author
Siddharth Sharma
