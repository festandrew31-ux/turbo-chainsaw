#!/bin/bash
# Clean old terminal transcript into structured files

# Create target folder
mkdir -p turbo-chainsaw/week3/2025-08-26

# Save raw transcript
cat << 'EOF' > turbo-chainsaw/week3/2025-08-26/transcript.txt
Script started on 2025-08-26 14:26:14-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="24"]
mkdir ~/path-to-your-repo/week2
mkdir: cannot create directory ‘/home/afest/path-to-your-repo/week2’: No such file or directory
mkdir ~/cyber_rebuild/week2
mkdir: cannot create directory ‘/home/afest/cyber_rebuild/week2/session_2025-08-26.txt’: File exists
mv ~/path-to-your-repo/kali_full_setup.* ~/cyber_rebuild/week2/
Script done
EOF

# Extract commands only
grep -E "^(mkdir|mv)" turbo-chainsaw/week3/2025-08-26/transcript.txt > turbo-chainsaw/week3/2025-08-26/commands.sh

# Add README
cat << 'EOF' > turbo-chainsaw/week3/2025-08-26/README.md
# Session – 2025-08-26

**Objective:** Cleaning up repo structure and moving setup scripts.

### Commands Run
- Attempted to create `~/path-to-your-repo/week2` (failed)
- Corrected path: `~/cyber_rebuild/week2`
- Moved setup files into the proper folder

### Notes
- Error due to missing directory path was corrected by pointing to the actual repo root.
- Confusion cleared up: always start from `~/cyber_rebuild` (repo root).
EOF

echo "✅ Session cleaned. Check turbo-chainsaw/week3/2025-08-26/"
