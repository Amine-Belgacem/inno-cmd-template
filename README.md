# Inno Setup CLI Installer Template

This Inno Setup template packages a Windows command-line utility with its usage file and an installation-directory entry in the system `PATH`. It is useful when handing a CLI program to users who should be able to run its command without first navigating to the installed executable.

The script provides a starting point for application metadata, file copying, a Start menu entry, and uninstall handling. Replace the sample program and text files, then adapt and test the paths and registry behavior for your own utility.

## Use

1. Install Inno Setup. The original 6.2.0 installer is retained in [inno-release-6.2.0](inno-release-6.2.0).
2. Replace `myprog.exe` with your utility.
3. Edit [usage.txt](usage.txt), [license.txt](license.txt), and the application settings in [script.iss](script.iss).
4. Review the shortcut names, executable paths, and registry/uninstall code for your application.
5. Open `script.iss` in Inno Setup and compile it.

## Template behavior

The script copies the executable and usage file, creates a Start menu entry, appends the installation directory to the machine-wide `PATH`, and attempts to remove it during uninstall.

Test installation and uninstallation, especially the system `PATH` changes, before distributing your installer.
