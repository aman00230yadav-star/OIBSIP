# OIBSIP
OIBSIP INTERSHIP TASKS
# Nmap Network Scan

## Objective

The objective of this task is to perform a basic network scan using Nmap to identify open ports and the services running on a local system. The scan helps demonstrate how network services can be discovered and assessed from a security perspective.

## Tools Used

- Nmap
- Windows Command Prompt / PowerShell
- Localhost (`127.0.0.1`)

## Environment

The scan was performed against my own local machine using the loopback address:

`127.0.0.1`

Scanning localhost ensures that the activity remains within my own system/environment.

## Commands Used

### Verify Nmap Installation

```bash
nmap --version
```

### Basic Port Scan

```bash
nmap 127.0.0.1
```

### Service and Version Detection

```bash
nmap -sV 127.0.0.1
```

### Save Results to a File

```bash
nmap -sV 127.0.0.1 -oN nmap_scan_results.txt
```

## Scan Results

The detailed Nmap output is available in:

`nmap_scan_results.txt`

The scan identified the ports and services that were accessible on the local system at the time of testing.

## Port Analysis

Each open port represents a network service that is listening for connections.

The security significance of an open port depends on the service running on that port, its configuration, authentication requirements, software version, and whether the service needs to be accessible.

For example:

- **HTTP (Port 80):** Commonly used for web servers. If unnecessary, exposing HTTP may increase the attack surface.
- **HTTPS (Port 443):** Commonly used for encrypted web services.
- **SSH (Port 22):** Used for secure remote administration. Strong authentication and appropriate access restrictions are important.
- **SMB (Port 445):** Used for Windows file and printer sharing. It should be properly secured and exposed only where necessary.
- **RDP (Port 3389):** Used for Windows Remote Desktop. Strong authentication and network restrictions are important.

Only the ports actually discovered during the scan should be considered in the final analysis.

## Screenshots

Screenshots of the Nmap installation and scan output are included in the `screenshots` directory.

### Nmap Version



### Nmap Scan



## Security Significance

Network scanning is an important reconnaissance technique in cybersecurity. Identifying open ports allows administrators and security professionals to determine which network services are exposed.

An unnecessarily open port can increase the attack surface of a system. However, an open port alone does not necessarily indicate a vulnerability.

Services should be review🎓 OIBSIP Cybersecurity Internship — Final Summary

Show Image Show Image Show Image

👤 About

Rohit Yadav B.Tech Computer Science Engineering Student Cybersecurity Intern @ Oasis Infobyte (OIBSIP)

📋 Tasks Completed
#	Task	Repository
1	Network Scanning with Nmap	task1-nmap-scan
2	Basic Firewall Configuration with UFW	task2-ufw-firewall
4	Research Report: Common Network Security Threats	task4-network-security-threats
6	Research Report: Importance of Patch Management	task6-patch-management-report

(Replace the # links above with your actual GitHub repo URLs once uploaded.)

🛠️ What Each Task Covered

Task 1 — Nmap Network Scanning Installed Nmap and performed a full scan on a local VM to identify open ports and running services, then documented what each open port means from a security standpoint.

Task 2 — UFW Firewall Configuration Set up a host-based firewall on Ubuntu, configuring it to allow SSH while denying HTTP traffic, and verified the active rules — a hands-on look at least-privilege network access control.

Task 4 — Network Security Threats Report Researched and documented how DoS/DDoS, Man-in-the-Middle, and spoofing attacks work, backed by real-world cases like the Mirai/Dyn botnet attack, along with practical mitigation strategies for each.

Task 6 — Patch Management Report Explored why timely patching matters, examining real breaches (Equifax, WannaCry, Log4Shell) caused by unpatched systems, and laid out best practices for a proper patch management strategy.

🙏 Acknowledgment

This internship gave me hands-on experience across both the practical (Nmap, UFW) and analytical (research and reporting) sides of cybersecurity. Thanks to Oasis Infobyte for a well-structured, beginner-friendly program that made real security tools and concepts genuinely approachable — a great stepping stone into the field.

⭐ Thank you, Oasis Infobyte, for the opportunity!ed to determine whether they are required, properly configured, updated, and appropriately protected.

## Conclusion

The Nmap scan successfully demonstrated how open ports and running services can be identified on a local system. The exercise provided practical experience with network reconnaissance and helped demonstrate the relationship between exposed services and system security.

The scan results were documented in `nmap_scan_results.txt`, while screenshots and explanations were included in this repository for documentation and review.
