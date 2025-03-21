# jman
# JMan - Java Version Manager
JMan is a simple and efficient tool for managing Java versions on Windows systems. It allows developers to easily switch between different JDK versions directly from the terminal.

# Features:
List Installed Versions: Easily list all installed Java versions on your system.
Set Active Version: Quickly set the active JDK version for your environment.
Install Java Versions: Automatically install missing Java versions using winget.
Flexible: Works with both manual and winget-installed Java versions.
Usage:
List Installed Versions:
jman ls
Displays all the installed Java versions on your system.

Show Active Java Version:
jman current
Displays the currently active Java version.

Set a Java Version:
jman [version]
Sets the specified Java version as the active one.

Install a Java Version:
jman install [version]
Installs a specific Java version if it's not already installed.

Installation:
JMan requires winget for Java version installation. Ensure that winget is installed and available on your system. If not, you can download and install it from here.

Example:

# List all installed Java versions
jman ls

# Set Java 11 as the active version
jman 11

# Install OpenJDK 17
jman install 17
