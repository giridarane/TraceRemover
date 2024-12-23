#!/bin/bash

# Function to clear bash history
clear_bash_history() {
    echo "Clearing bash history..."
    history -c
    history -w
    echo "Bash history cleared."
}

# Function to remove temporary files
remove_temp_files() {
    echo "Removing temporary files..."
    # Remove regular temporary files
    rm -rf /tmp/*
    rm -rf /var/tmp/*

    # Handle systemd private directories
    echo "Handling systemd private directories..."
    for dir in /tmp/systemd-private-* /var/tmp/systemd-private-*; do
        if [ -d "$dir" ]; then
            echo "Cannot remove $dir. Skipping."
        fi
    done

    echo "Temporary files removed."
}

# Function to clear system logs
clear_system_logs() {
    echo "Clearing system logs..."
    sudo rm -rf /var/log/*
    echo "System logs cleared."
}

# Function to remove SSH keys
remove_ssh_keys() {
    echo "Removing SSH keys..."
    rm -rf ~/.ssh/known_hosts
    rm -rf ~/.ssh/id_rsa
    rm -rf ~/.ssh/id_rsa.pub
    echo "SSH keys removed."
}

# Function to clear browser history and cache
clear_browser_history() {
    echo "Clearing browser history and cache..."
    # For Firefox
    rm -rf ~/.mozilla/firefox/*.default-release/cache2/*
    rm -rf ~/.mozilla/firefox/*.default-release/storage/*.default/00000000.sqlite
    # For Chrome
    rm -rf ~/.config/google-chrome/Default/Cache/*
    rm -rf ~/.config/google-chrome/Default/History
    echo "Browser history and cache cleared."
}

# Main function to call all the above functions
main() {
    clear_bash_history
    remove_temp_files
    clear_system_logs
    remove_ssh_keys
    clear_browser_history
}

# Call the main function
main
