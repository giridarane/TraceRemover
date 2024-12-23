# TraceRemover
This Bash script is a privacy-focused cleanup tool designed for ethical hackers and security professionals. It clears Bash history, removes temporary files, deletes system logs, clears browser data, and wipes SSH keys to protect sensitive information, ensure privacy, and sanitize systems after testing or shared usage.
## Features

- Clears Bash history
- Removes temporary files from system directories
- Clears system logs
- Removes SSH keys
- Clears browser history and cache (Firefox and Chrome)

## Requirements

- A Linux-based operating system (e.g., Kali Linux, Ubuntu, etc.)
- `sudo` privileges to modify system files
- Basic knowledge of terminal commands

## Setup

1. **Download the script:**
   Save the script to your local system, for example as `remove_fingerprints.sh`.

2. **Make the script executable:**
   Open a terminal in the directory where the script is saved and run the following command:

   ```bash
   chmod +x remove_fingerprints.sh
   ```
   Run the script: To execute the script, use sudo for elevated privileges:

    ```bash
    sudo ./remove_fingerprints.sh
    ```
    The script will proceed to clean up Bash history, temporary files, system logs, SSH keys, and browser history.

   Usage
   Once the script is executed, it will display messages indicating what actions it is performing. It may take a few moments, depending on the amount of data to clear.

   Note: Be cautious when running this script, as it will permanently delete data such as Bash history, system logs, and SSH keys.

Script Overview
clear_bash_history: Clears Bash command history from the current user.
remove_temp_files: Removes temporary files from /tmp/ and /var/tmp/.
clear_system_logs: Clears logs stored in /var/log/.
remove_ssh_keys: Deletes SSH key files from the user's .ssh/ directory.
clear_browser_history: Removes browser cache and history for Firefox and Chrome.
