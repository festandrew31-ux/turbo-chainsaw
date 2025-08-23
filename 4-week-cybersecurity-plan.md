# Post-NuCamp Cybersecurity Rebuild – 4-Week Hands-On Plan

**Goal:** Build applied Linux, networking, and beginner penetration testing skills.  
**Portfolio Focus:** Document each exercise and challenge in this repository to show employers your hands-on learning and skills.

**Time per day:** 1–2 hours  
**Requirements:** Ubuntu/Kali VM, GitHub account for documentation

---

## Week 1 – Linux Fundamentals / Command Line

**Platform:** Your own Ubuntu/Kali VM

| Day  | Goal                    | Step-by-Step Exercise                                                                                                                |
|------|-------------------------|-------------------------------------------------------------------------------------------------------------------------------------|
| Mon  | Navigate Linux          | 1. Open terminal (`Ctrl+Alt+T`). 2. `pwd` 3. `ls` 4. `ls -l` 5. `cd /` 6. `cd ~` 7. `df -h` 8. `mkdir ~/testfolder` 9. `ls ~/testfolder` <br>Document all commands/screenshots to GitHub. |
| Tue  | File & Text Manipulation| 1. `cd /var/log` 2. `less syslog` (scroll with arrows, `q` to quit) 3. `grep "error" syslog` 4. `grep -c "error" syslog` 5. Optional: `grep "$(date +%b\ %d)" syslog` <br>Document all commands/screenshots to GitHub. |
| Wed  | Networking Basics       | 1. `ping -c 4 google.com` 2. `ip addr` 3. `netstat -tuln` 4. `wget http://example.com` 5. `curl http://example.com` 6. Optional: `ping [host IP]`<br>Document all. |
| Thu  | Bash Scripting          | 1. `nano ~/backup.sh` 2. Paste script: <br>```#!/bin/bash<br>cp ~/Documents/* /tmp/<br>echo "Backup complete"```<br>3. `Ctrl+O` → Enter → `Ctrl+X` 4. `chmod +x ~/backup.sh` 5. Run: `./backup.sh` 6. `ls /tmp` <br>Screenshot/output → GitHub. |
| Fri  | Users & Permissions     | 1. `sudo adduser testuser` 2. `groups testuser` 3. `chmod 600 ~/testfile.txt` 4. `ls -l ~/testfile.txt` 5. `sudo deluser testuser` <br>Document steps/screenshots → GitHub. |
| Sat  | Applied Challenge       | Bandit Levels 0–2: SSH into server: `ssh bandit0@bandit.labs.overthewire.org -p 2220`. Retrieve password file: `cat readme`. Level 1: use Linux commands to find next password. Document each step. |
| Sun  | Review & Portfolio      | Consolidate screenshots, commands, notes into GitHub. Write a short summary: “Skills I learned this week and applications for a job.” |

---

## Week 2 – Linux + Beginner Penetration Testing

**Platform:** Local VM + HTB Starting Point or VulnHub beginner VM

| Day  | Goal                    | Step-by-Step Exercise                                                                                                                |
|------|-------------------------|-------------------------------------------------------------------------------------------------------------------------------------|
| Mon  | SSH & Services          | 1. Open terminal. 2. SSH into HTB VM: `ssh user@IP_ADDRESS` 3. Scan open ports/services: `nmap -sV [IP_ADDRESS]` <br>Document IP, ports, services in GitHub. Screenshot output. |
| Tue  | File Enumeration        | 1. On VulnHub VM: `find / -name "*.conf" 2>/dev/null` 2. View file contents: `cat /etc/hostname` <br>Document filenames, paths, interesting info to GitHub. |
| Wed  | Basic Exploits          | 1. Check file permissions: `ls -l /home/victim` 2. Attempt reading “protected” file: `cat /home/victim/secret.txt` 3. Note success/failure and fix permissions. <br>Document all steps/screenshots. |
| Thu  | Password Hash Practice  | 1. Create file: `echo "password123"` *(exercise incomplete in your original draft, consider expanding here!)*                      |
| Fri  | Packet Capture          | 1. Install tcpdump: `sudo apt install tcpdump -y` 2. Capture packets: `sudo tcpdump -i eth0 -c 20` 3. Review source/destination IPs, protocols. <br>Screenshot terminal → GitHub. |
| Sat  | Applied Challenge       | HTB Starting Point Room 2 / VulnHub beginner VM. Steps: 1. SSH into VM 2. Enumerate ports/services 3. Explore filesystem/find “flag” files 4. Optional packet capture <br>Document all steps/screenshots. |
| Sun  | Portfolio Update        | Upload all Week 2 labs/screenshots/commands to GitHub. Write short summaries per lab.                                                |

---

## Week 3 – Web Application Basics

**Platform:** Local VM + OWASP Juice Shop / DVWA

| Day  | Goal                    | Step-by-Step Exercise                                                                                                                |
|------|-------------------------|-------------------------------------------------------------------------------------------------------------------------------------|
| Mon  | Web Recon               | 1. Launch Juice Shop locally 2. Open browser → Inspect forms, URLs, cookies using developer tools 3. Document potential vulnerabilities/screenshots → GitHub. |
| Tue  | SQL Injection Basics    | 1. Test SQLi on login form: try `' OR '1'='1` in username/password 2. Observe response 3. Document safely → GitHub.                |
| Wed  | XSS Practice            | 1. Inject `<script>alert('test')</script>` into form field 2. Confirm alert runs in browser 3. Document safely/screenshots → GitHub. |
| Thu  | Directory & File Enum.  | 1. Install dirb: `sudo apt install dirb -y` 2. Scan Juice Shop directories: `dirb http://localhost:3000` 3. Document findings/commands → GitHub. |
| Fri  | Applied Web Lab         | 1. Complete one Juice Shop/DVWA challenge 2. Document every step in GitHub with screenshots 3. Write a short reflection: “How this could apply to real work.” |
| Sat  | Portfolio Update        | Consolidate Week 3 labs/screenshots/commands into GitHub.                                                                            |
| Sun  | Review & Reinforce      | Repeat any exercises you struggled with until confident. Update GitHub.                                                             |

---

## Week 4 – Consolidation & Mini Projects

**Platform:** Local VM + VulnHub / HTB

| Day  | Goal                    | Step-by-Step Exercise                                                                                                                |
|------|-------------------------|-------------------------------------------------------------------------------------------------------------------------------------|
| Mon  | Mini Pentest            | VulnHub beginner VM: Full workflow – 1. Enumerate open ports 2. Explore filesystem 3. Basic privilege escalation 4. Document every step/screenshots → GitHub. |
| Tue  | Linux Hardening         | 1. Disable unused services: `sudo systemctl disable [service]` 2. Configure firewall: `sudo ufw enable` + `sudo ufw status` 3. Secure SSH: edit `/etc/ssh/sshd_config` 4. Document steps/screenshots → GitHub. |
| Wed  | Packet Analysis         | 1. Capture network traffic: `sudo tcpdump -i eth0 -c 50` 2. Identify normal vs anomalous patterns 3. Screenshot commands/output → GitHub. |
| Thu  | Portfolio Lab           | Re-do a previous lab and create professional lab report: steps, commands, screenshots, lessons learned. Upload to GitHub.           |
| Fri  | Resume/Portfolio Prep   | Update GitHub repo: add README → “Skills Demonstrated,” lab summaries.                                                              |
| Sat  | Applied Challenge       | Re-attempt a difficult HTB/VulnHub lab. Show improvement. Document fully → GitHub.                                                  |
| Sun  | Review & Plan Next Month| Reflect on strengths/weaknesses. Identify next skills: scripting, web pentesting, cloud security basics. Document reflection → GitHub.|

---

## How To Use This Plan

- **Document everything:** Commands, screenshots, lessons learned—commit these to your GitHub repository daily.
- **Reflect and summarize:** At the end of each week, write a short reflection about the skills you've learned and their applications.
- **Portfolio building:** By the end of 4 weeks, your repo will showcase hands-on labs, practical exercises, and professional documentation.

---

> *Created collaboratively with ChatGPT to maximize learning outcomes and portfolio value. Adapt as needed for your own growth.*
