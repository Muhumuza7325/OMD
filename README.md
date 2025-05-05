# About the Developer

- Hi, I’m @Muhumuza7325
- A passionate scientist currently exploring Bioinformatics.
- Driven by the vision to contribute to the transformation of education in Uganda and globally.
- You can connect to me via email: muhumuzaomega@gmail.com

## Installation Instructions for Android Phone Users (Using UserLAnd)
Android users can run the pipelines by using the free UserLAnd app, which provides a full Linux environment without requiring root access.

1.  **Install UserLAnd:**
    Download [UserLAnd](https://play.google.com/store/apps/details?id=tech.ula) from the Google Play Store.

2.  **Set up Ubuntu (Minimal Terminal):**
    Tap on the UserLand app on the home screen. Click on the three dots in the top-right corner of the application window and select Settings. In the settings menu, choose Sessions as your default landing page. Press the back button (usually a back arrow or swipe gesture on your phone) to return to the main screen. Now, select Ubuntu as your distribution. Allow access to Storage. Select Minimal when asked for filesystem type. Select Terminal as the session type. Check the option to always use this setting.

3.  **Run the Setup Command (One-Liner):**
    After setup completes and you're inside the Ubuntu terminal, paste the following single command:

    **sudo apt update && sudo apt-get upgrade -y && sudo apt install --reinstall ca-certificates -y && sudo apt install whiptail -y && sudo ln -sf /usr/share/zoneinfo/Africa/Nairobi /etc/localtime && mkdir -p ~/Omd && cd ~/Omd && curl -O -L https://github.com/Muhumuza7325/OMD/raw/main/android_omd_launcher.sh && chmod +x android_omd_launcher.sh && echo 'bash ~/Omd/android_omd_launcher.sh' >> ~/.bashrc && bash android_omd_launcher.sh**

4.  **Use the Launcher:**
    Every time you open a new terminal session in UserLAnd, an interactive script should launch automatically. If the terminal hangs, press **Ctrl + C** to continue to the subject selection interface. If the terminal opens but the subject selection interface does not appear, press **Ctrl + D** to log out of the current session and start again. Please note that content for some subjects is still under development. We wish you all the best in your studies and look forward to your continued cooperation. If you have any questions or run into any difficulties, please feel free to contact us. Also remember to contact us for details on how to integrate AI (Artificial intelligence) for free into the pipeline(s).

## Installation Instructions for MacOS and Linux

1.  **Create a New folder on the Desktop:**
    Right-click on your Desktop and create a new folder. You can name it anything you like (e.g., Omd).

2.  **Extract the files to the newly created folder:**
    Right-click the downloaded ZIP archive and select "Extract To...". Choose the folder you just created in Step 1 as the destination. After extraction, open the folder and delete any files and shortcuts related to subjects you are not interested in. This prevents installation of unwanted pipelines. macOS users do not need to delete any shortcuts, as they will not be used in the installation.
    
3.  **Copy or move some files to the Desktop:**
    From the folder, copy or move the following three files to your Desktop: install_omd.desktop, install_omd.sh, and logo.jpeg. Then, right-click the install_omd.desktop file and enable it for launching: On Linux, look for an option like “Allow Launching” or enable permissions via the “Properties” > “Permissions” tab. On macOS, the install_omd.desktop file will not be used. You can ignore it.

4.  **Install the pipeline(s):**
    On Linux, double-click the install_omd.desktop file to begin installation. A terminal window will appear showing the progress. You may be asked to enter your sudo password. On macOS, double-click the install_omd.command file(s) that will appear on your Desktop automatically after extraction. Once installation is complete, you may delete the ZIP archive, the extracted folder, and the files you placed on your Desktop. Note that the shortcuts to the installed pipelines will appear on your Desktop. Do not move them to other locations, or they may stop working. For Linux users, refer back to Step 3 if needed to allow launching.

5.  **Launch the Pipeline(s) and start Learning:**
    Thank you for installing the Educational Pipeline(s). To begin your learning journey, simply double-click on any of the shortcuts. Please note that content for some subjects is still under development. We wish you all the best in your studies and look forward to your continued cooperation. If you have any questions or run into any difficulties, please feel free to contact us. Also remember to contact us for details on how to integrate AI (Artificial intelligence) for free into the pipeline(s).


## Installation Instructions for Windows (10 & above)

1.  **Install Ubuntu using Windows PowerShell:**
    Search for "Windows PowerShell" using the computer search bar or icon, and then choose the option to Run as Administrator. On the terminal that opens, copy and paste the command "wsl --install" (without quotes) and press enter. Wait for the ~400 MB download to complete and and click on the restart option provided to restart your computer.

2.  **Set up Ubuntu:**
    After restarting your computer, use the system search bar or start menu to look for "Ubuntu 24.04.1 LTS" and click to open it. It should launch without any errors. If you encounter an error related to Virtualization Technology (VT), you may need to enable it in your system’s BIOS or UEFI settings. [Follow this guide from Microsoft to enable VT](https://support.microsoft.com/en-us/windows/enable-virtualization-on-windows-c5578302-6e43-4b4b-a449-8ced115f58e1). If this or any other error prevents you from proceeding, feel free to contact us. Once Ubuntu starts successfully, you'll be prompted to create a username. Use lowercase letters only and keep it as short and simple as possible... Then also set your password... I would request you use your name as your password because we may need it to trouble shoot some things one day and if you forgot it, we will have to repeat all the above steps. The password isn't shown as you type it, so don't get worried... Enter it and press enter, then confirm it by re-entering it again and pressing enter. Note that we shall also need to use that very same password in the installation steps below... At the terminal prompt, copy and paste the commmad "touch .hushlogin"... Don't include the quotation marks and then press enter... Then press **Ctrl + D** to log out.
    

3.  **Extract and Make Executable the Script(s) handling Subject(s) of your Choice:**
    Right click the downloaded ZIP archive and select the option to `Extract to download_omd_files_wsl\`. Open the `download_omd_files_wsl` folder created and delete files and shortcuts with subject names not of your interest. This will prevent generation of pipelines and shortcuts of subjects that are not of interest to you.

4.  **Install the Pipeline(s):**
    Double click the `install_omd_wsl.exe` Application with in the `download_omd_files_wsl` folder. Follow the instructions, providing the password you set for the Windows Subsystem of Linux. After completing the installation process, you are free to delete both the downloaded ZIP archive and the created folder. Note that the shortcut(s) to the created pipeline(s) will be put on the Desktop (You are free to move them to any other location).

5.  **Launch the Pipeline(s) and start learning:**
    Thank you for installing the Educational Pipeline(s). To begin your learning journey, simply double-click on any of the shortcuts. Please note that content for some subjects is still under development. We wish you all the best in your studies and look forward to your continued cooperation. If you have any questions or run into any difficulties, please feel free to contact us. Also remember to contact us for details on how to integrate AI (Artificial intelligence) for free into the pipeline(s).


## License

All work in this repository is licensed under the Creative Commons Attribution-NonCommercial (CC BY-NC) license. This license allows others to share and adapt the material for non-commercial purposes, as long as they give appropriate credit and do not apply additional restrictions.

### Attribution Requirements

If you use or adapt any files from this repository, you must give appropriate credit. Please provide a link to the license and indicate if changes were made. You can include the following attribution statement in your work:

"[File Name] from [Muhumuza7325] by @Muhumuza7325 is licensed under CC BY-NC 4.0. To view a copy of this license, visit [https://github.com/Muhumuza7325/Muhumuza7325/blob/main/LICENSE.txt]."

### License Information

To view a copy of the CC BY-NC license, see the [LICENSE.txt](LICENSE.txt) file.

Please note that this license may not provide all the permissions necessary for your intended use. Other rights, such as publicity, privacy, or moral rights, may limit how you use the material.


## License

All work in this repository is licensed under the Creative Commons Attribution-NonCommercial (CC BY-NC) license. This license allows others to share and adapt the material for non-commercial purposes, as long as they give appropriate credit and do not apply additional restrictions.

### Attribution Requirements

If you use or adapt any files from this repository, you must give appropriate credit. Please provide a link to the license and indicate if changes were made. You can include the following attribution statement in your work:

"[File Name] from [Muhumuza7325] by @Muhumuza7325 is licensed under CC BY-NC 4.0. To view a copy of this license, visit [https://github.com/Muhumuza7325/Muhumuza7325/blob/main/LICENSE.txt]."

### License Information

To view a copy of the CC BY-NC license, see the [LICENSE.txt](LICENSE.txt) file.

Please note that this license may not provide all the permissions necessary for your intended use. Other rights, such as publicity, privacy, or moral rights, may limit how you use the material.
