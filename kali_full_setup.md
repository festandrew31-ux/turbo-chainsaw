# Kali Full Setup Log

This file contains a cleaned-up version of the Kali Linux setup transcript, focusing on the commands and relevant output. Unnecessary terminal escape sequences, cursor movements, and repetitive lines have been removed for clarity.

---

```bash
# Start in home directory and attempt to cd to vm_logs_repo
cd ~/vm_logs_repo
# Output: cd: no such file or directory: /home/kaliuser/vm_logs_repo

# Clone repository into ~/vm_logs_repo
git clone https://github.com/YOURUSERNAME/YOURREPO.git ~/vm_logs_repo
# Output:
# Cloning into '/home/kaliuser/vm_logs_repo'...
# remote: Enumerating objects: 46, done.
# remote: Counting objects:   ...
# Receiving objects:   ...
# Resolving deltas:   ...

# Change into the cloned repo directory
cd ~/vm_logs_repo

# List files in the repo
ls -a
# Output:
# .
# ..
# 2025-08-11-daily-cybersecurity-practice_Version2.md
# 2025-08-12-daily-cybersecurity-practice_Version2.md
# 2025-08-13-daily-cybersecurity-practice_Version2.md
# 2025-08-14-daily-cybersecurity-practice_Version2.md
# 2025-08-15-daily-log_Version4.md
# 2025-08-18-kali-update-log.md
# 2025-08-20-kali-git-setup.md
# .git
# LICENSE
# README.md
# SSH_key_ubuntu_github
# ubuntu_full_setup.log
# ubuntu_full_setup.md
# week1

# Attempt to create kali_full_setup.md from kali_full_setup.log
echo '```bash' > kali_full_setup.md
cat ~/kali_full_setup.log >> kali_full_setup.md
echo '```' >> kali_full_setup.md
# Output: cat: /home/kaliuser/kali_full_setup.log: No such file or directory

# List home directory for verification
ls ~
# Output:
# cyber_rebuild  Downloads  post-nucamp-rebuild  turbo-chainsaw  vm_logs_repo
# Desktop        Music      Public               Videos
# Documents      Pictures   Templates            vm_logs
```

---

**Notes:**
- The log above summarizes the setup session and removes terminal color codes and control sequences.
- Replace `YOURUSERNAME` and `YOURREPO` in the `git clone` command with your actual GitHub username and repository.
- The attempt to use `kali_full_setup.log` failed because the file does not exist.
- All commands and their outputs are shown for clarity.
