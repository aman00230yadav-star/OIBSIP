Research Report: Common Network Security Threats
Introduction

Networks are the backbone of virtually every modern organization, which also makes them one of the most heavily targeted attack surfaces in cybersecurity. Understanding how common network-based threats work — and how to defend against them — is foundational knowledge for anyone working in security. This report examines three major categories of network security threats: Denial-of-Service (DoS/DDoS) attacks, Man-in-the-Middle (MITM) attacks, and spoofing attacks — covering how each works, their real-world impact, and practical mitigation strategies.

1. Denial-of-Service (DoS) and Distributed Denial-of-Service (DDoS) Attacks
How It Works

A DoS attack aims to make a system, service, or network unavailable to legitimate users by overwhelming it with traffic or exploiting a resource-exhaustion flaw. A DDoS attack does the same thing but uses many distributed sources — often a botnet of compromised devices — to flood the target simultaneously, making the traffic harder to block or trace to a single source.

Common techniques include:

Volumetric attacks – flooding bandwidth with junk traffic (e.g., UDP floods, ICMP floods)
Protocol attacks – exploiting weaknesses in network protocols (e.g., SYN floods that exhaust connection tables)
Application-layer attacks – overwhelming a specific application function (e.g., repeated HTTP requests to a resource-heavy endpoint)
Real-World Example: The Mirai Botnet Attack on Dyn (2016)

In October 2016, the Mirai botnet — built from hundreds of thousands of poorly secured IoT devices such as home routers and IP cameras running default credentials — was used to launch a massive DDoS attack against Dyn, a major DNS provider. <cite index="27-1">The attack disrupted access to major platforms including Twitter, Amazon, GitHub, and the New York Times</cite>, and <cite index="31-1">more than 50 major internet platforms became temporarily inaccessible across North America and Europe</cite>. <cite index="26-1">The attack peaked at a traffic rate of 1.2 terabits per second</cite>, making it one of the largest DDoS attacks recorded at the time. The root cause was strikingly simple: <cite index="27-1">most of the compromised IoT devices were running on default, unchanged factory credentials</cite>.

Impact
Service outages and downtime, directly affecting revenue and availability
Reputational damage and loss of customer trust
Can serve as a smokescreen for other attacks happening simultaneously
Increasing risk from IoT devices, which are often deployed with weak or default security settings
Mitigation Strategies
Deploy DDoS protection/scrubbing services (e.g., cloud-based traffic filtering, CDNs)
Use rate limiting and connection throttling on public-facing services
Configure firewalls and load balancers to detect and drop abnormal traffic patterns
Change default credentials on all network-connected/IoT devices
Maintain redundant DNS providers and failover infrastructure
Develop and rehearse an incident response plan specifically for availability attacks
2. Man-in-the-Middle (MITM) Attacks
How It Works

In a MITM attack, an attacker secretly intercepts and potentially alters communication between two parties who believe they are communicating directly with each other. The attacker positions themselves on the communication path — commonly on unsecured or poorly configured networks — to eavesdrop, steal credentials, or inject malicious content.

Common MITM techniques include:

ARP spoofing – tricking devices on a LAN into sending traffic through the attacker's machine
Rogue Wi-Fi access points – setting up fake public Wi-Fi hotspots to intercept connected users' traffic
SSL stripping – downgrading an HTTPS connection to unencrypted HTTP without the user noticing
DNS spoofing – redirecting a victim's traffic to a malicious server by corrupting DNS resolution
Real-World Context

A well-documented example is the use of tools like Firesheep (2010), a browser extension that allowed attackers on shared/public Wi-Fi networks to hijack other users' logged-in web sessions (e.g., Facebook, Twitter) by intercepting unencrypted session cookies — demonstrating how trivially exploitable open Wi-Fi networks were before widespread HTTPS adoption. Public Wi-Fi remains a common MITM vector today, particularly in airports, cafes, and hotels where users connect without verifying network authenticity.

Impact
Theft of login credentials, session tokens, and sensitive personal/financial data
Unauthorized access to accounts and further compromise of connected systems
Injection of malware or malicious content into otherwise legitimate traffic
Loss of data integrity — victims may act on tampered information without realizing it
Mitigation Strategies
Enforce HTTPS/TLS everywhere and use HSTS (HTTP Strict Transport Security) to prevent downgrade attacks
Avoid using sensitive services (banking, email) over unsecured/public Wi-Fi; use a VPN when necessary
Implement certificate pinning for critical applications
Use static ARP entries or Dynamic ARP Inspection (DAI) on managed switches to prevent ARP spoofing
Enable DNSSEC to protect against DNS spoofing
Educate users to verify network authenticity before connecting, and to heed browser certificate warnings
3. Spoofing Attacks
How It Works

Spoofing involves an attacker disguising themselves as a trusted entity — a device, user, or system — to gain unauthorized access, bypass security controls, or deceive a victim. Spoofing is often a supporting technique used to enable other attacks, including MITM and DDoS.

Common types of spoofing include:

IP spoofing – forging the source IP address of packets to impersonate a trusted host or to hide the true origin of an attack
Email spoofing – forging the sender address of an email to appear as though it came from a trusted source (a core technique in phishing)
DNS spoofing (cache poisoning) – corrupting DNS records so a domain name resolves to a malicious IP address
MAC spoofing – changing a device's MAC address to bypass network access controls or impersonate another device on a LAN
Real-World Example

IP spoofing is a foundational technique behind many amplification-based DDoS attacks, where attackers forge the victim's IP address in requests sent to third-party servers (such as DNS or NTP servers), causing those servers to flood the victim with response traffic — this was a technique used in several of the large-scale attacks attributed to Mirai-derived botnets around 2016, which CISA specifically flagged as a heightened threat to network infrastructure at the time.

Impact
Bypassing IP-based authentication and access control systems
Enabling large-scale amplification DDoS attacks
Facilitating phishing and business email compromise (BEC) scams
Undermining trust in DNS resolution, redirecting users to malicious sites without their knowledge
Mitigation Strategies
Implement ingress/egress filtering (e.g., BCP 38) on network edges to block packets with forged source addresses
Deploy SPF, DKIM, and DMARC email authentication standards to reduce email spoofing
Enable DNSSEC to cryptographically validate DNS responses
Use network segmentation and port security to limit the effectiveness of MAC spoofing
Monitor for anomalous traffic patterns that indicate spoofed source addresses
Cross-Cutting Preventive Measures

While each threat has specific mitigations, several foundational practices reduce exposure across all three categories:

Network segmentation – limiting how far an attacker can move if they gain a foothold
Strong authentication – multi-factor authentication reduces the value of intercepted or spoofed credentials
Continuous monitoring – intrusion detection/prevention systems (IDS/IPS) to catch abnormal traffic early
Regular patching – many spoofing and MITM techniques exploit outdated protocol implementations
Security awareness training – many attacks (especially spoofing-based phishing) succeed because of human error, not just technical gaps
Encryption by default – TLS for data in transit closes off large classes of MITM and eavesdropping attacks
Conclusion

DoS/DDoS attacks, Man-in-the-Middle attacks, and spoofing represent three distinct but often interconnected categories of network security threats. DoS/DDoS attacks target availability, MITM attacks target confidentiality and integrity of communications, and spoofing techniques frequently serve as the enabler for both. Real-world incidents like the Mirai/Dyn attack demonstrate how even simple security failures — like unchanged default device passwords — can cascade into internet-scale disruption. A layered defense strategy combining technical controls (encryption, filtering, monitoring), proper network architecture, and user awareness remains the most effective way to reduce exposure to these threats.

References
Stanford MS&E 238 Blog — The 2016 Dyn Attack and its Lessons for IoT Security https://mse238blog.stanford.edu/2018/07/clairemw/the-2016-dyn-attack-and-its-lessons-for-iot-security/
CoverLink Insurance — Cyber Case Study: The Mirai DDoS Attack on Dyn https://coverlink.com/case-study/mirai-ddos-attack-on-dyn/
CISA — Heightened DDoS Threat Posed by Mirai and Other Botnets https://www.cisa.gov/news-events/alerts/2016/10/14/heightened-ddos-threat-posed-mirai-and-other-botnets
NJCCIC — Mirai Botnet Threat Profile https://www.cyber.nj.gov/threat-landscape/malware/botnets/mirai
Medium — A Case Study on Mirai Botnet Attack of 2016 https://medium.com/@d21dcs151/a-case-study-on-mirai-botnet-attack-of-2016-4b66630e6508
OWASP — Man-in-the-Middle Attack https://owasp.org/www-community/attacks/Man-in-the-middle_attack
Cloudflare Learning Center — What is a DDoS Attack? https://www.cloudflare.com/learning/ddos/what-is-a-ddos-attack/
Cloudflare Learning Center — What is IP Spoofing? https://www.cloudflare.com/learning/ddos/glossary/ip-spoofing/

Report prepared as part of Oasis Infobyte Cybersecurity Internship (OIBSIP), Task 4, July–August 2026.
