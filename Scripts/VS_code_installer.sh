#function to install vscode...

install_VS_code() {
    echo "Installing VS Code....!"
    sudo snap install code --classic
    echo "VS_Code Installed."
}
#function to uninstall vscode....

uninstall_VS_Code(){
    echo "Uninstalling VS Code....!"
    sudo snap remove code
    echo "VS_Code Uninstalled."
}

#Script
while true; do
echo "Welcome to VS_Code Installer/Uninstaller Script"
echo "Do you want to (i)nstall or (u)ninstall VS_Code? (Enter 'i' or 'u', or 'q' to quit)"
    read -r choice

    case $choice in

    i | I)
    install_VS_code
    break;;
    u | U)
    uninstall_VS_Code
    break;;
    q | Q)
    echo "Exiting the Script."
    exit 0
    ;;
    *)
    echo "Invalid choice. Please enter correct one"
    ;;
    esac
    done
exit 0