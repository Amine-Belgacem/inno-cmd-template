# Inno Setup CLI Installer Template

An Inno Setup template for packaging a Windows command-line utility and adding its installation directory to the system `PATH`.

## Use

1. Install Inno Setup. The original 6.2.0 installer is retained in [inno-release-6.2.0](inno-release-6.2.0).
2. Replace `myprog.exe` with your utility.
3. Edit [usage.txt](usage.txt), [license.txt](license.txt), and the application settings in [script.iss](script.iss).
4. Review the shortcut names, executable paths, and registry/uninstall code for your application.
5. Open `script.iss` in Inno Setup and compile it.

## Template behavior

The script copies the executable and usage file, creates a Start menu entry, appends the installation directory to the machine-wide `PATH`, and attempts to remove it during uninstall.

This is a template requiring adaptation. Test installation and uninstallation on a disposable Windows environment, particularly the system `PATH` changes, before distributing a customized installer.
