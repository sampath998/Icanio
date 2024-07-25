#!/bin/bash

# Function to install Google Chrome
install_chrome() {
    echo "Installing Google Chrome..."
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg -i google-chrome-stable_current_amd64.deb
    sudo apt-get install -f # Install dependencies if any
    rm google-chrome-stable_current_amd64.deb
    echo "Google Chrome installed successfully."
}

# Function to uninstall Google Chrome
uninstall_chrome() {
    echo "Uninstalling Google Chrome..."
    sudo dpkg -r google-chrome-stable
    sudo apt-get autoremove
    echo "Google Chrome has been uninstalled."
}

# Main script
echo "Welcome to Google Chrome installer/uninstaller script."

while true; do
    echo "Do you want to (i)nstall or (u)ninstall Google Chrome? (Enter 'i' or 'u', or 'q' to quit)"
    read -r choice

    case $choice in
    i | I)
        install_chrome
        break
        ;;
    u | U)
        uninstall_chrome
        break
        ;;
    q | Q)
        echo "Exiting the script."
        exit 0
        ;;
    *)
        echo "Invalid choice. Please enter 'i' to install or 'u' to uninstall."
        ;;
    esac
done

exit 0
