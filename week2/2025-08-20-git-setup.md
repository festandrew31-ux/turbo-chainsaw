1️⃣ Markdown Log of Today’s Session
# Post-NuCamp Cybersecurity Rebuild – Git & Script Log Setup
**Date:** 2025-08-20  
**VM:** Kali Linux  
**Objective:** Authenticate GitHub, copy script logs, and push to repo.

---

## 1. Verified script logs from previous days

```bash
ls ~/cyber_rebuild/week1/
cat ~/cyber_rebuild/week1/session_mon.txt

Confirmed that all previous logs exist and are readable.

2. Installed VirtualBox Guest Additions for clipboard support
sudo apt update
sudo apt install virtualbox-guest-x11 virtualbox-guest-utils -y
sudo reboot

Verified copy-paste between host and VM is working.
Also confirmed Ctrl+Shift+V pastes in the terminal.

3. Initialized Git repository and renamed branch
cd ~/turbo-chainsaw
git init
git branch -m main

Ensured branch matches GitHub default (main).

4. Set Git remote
git remote add origin https://github.com/festandrew31-ux/turbo-chainsaw.git
git remote set-url origin https://github.com/festandrew31-ux/turbo-chainsaw.git

5. Copied script logs into repo
mkdir -p week1
cp ~/cyber_rebuild/week1/session_mon.txt ./week1/
cp ~/cyber_rebuild/week1/session_tue.txt ./week1/

6. Staged and committed files
git add week1/session_mon.txt
git commit -m "Add Week 1 Day 1 script log"

git add week1/session_tue.txt
git commit -m "Add Week 1 Day 2 script log"

7. Pulled remote changes and merged
git pull origin main --allow-unrelated-histories --no-rebase

Resolved merge commit automatically.

8. Pushed changes to GitHub
git push -u origin main

Username: festandrew31-ux

Password: GitHub Personal Access Token (PAT)

✅ All logs successfully pushed and merged

9. Future daily workflow

For each new script log, use:
# Start a new script session
script ~/cyber_rebuild/week1/session_<day>.txt
# Work in terminal, then exit to save

# Copy today's script log into repo folder
cp ~/cyber_rebuild/week1/session_<day>.txt ~/turbo-chainsaw/week1/

# Stage, commit, and push
cd ~/turbo-chainsaw
git add week1/session_<day>.txt
git commit -m "Add Week 1 Day <day> script log"
git push

Replace <day> with the day of the week or date.

This keeps your GitHub repo up-to-date with minimal commands.
