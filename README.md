# jman - v1.0.0
# JMan - Java Version Manager
JMan is a simple and efficient tool for managing Java versions on Windows systems. It allows developers to easily switch between different JDK versions directly from the terminal.

# Features:
 -✅ List Installed Versions – Easily list all installed Java versions on your system.
- ✅ Set Active Version – Quickly set the active JDK version for your environment.
- ✅ Install Java Versions – Automatically install missing Java versions using winget.
- ✅ Works with Different Installations – Supports both manually installed and winget-installed JDKs.

Usage:
- List Installed Versions:
**jman ls**

- Show Active Java Version:
**jman current**

- Set a Java Version:
**jman [version]**

- Install a Java Version:
**jman install [version]**

#🔹 Installation & Setup
1️⃣ Add JMan to the System **PATH**
To use JMan from any terminal, you need to add its directory to the system PATH:

Move jman.bat to a permanent location (e.g., C:\jman\).
Add C:\jman\ to the Windows PATH environment variable:
Open Run (Win + R), type sysdm.cpl, and press Enter.
Go to the Advanced tab → Click Environment Variables.
Under System Variables, find and select Path, then click Edit.
Click New, add C:\jman\, and click OK to save.
Restart your terminal to apply the changes.
2️⃣ Ensure winget is Installed
JMan uses winget to install Java versions automatically. To check if winget is available, run:

sh
Copiar
Editar
winget --version
If winget is not installed, you can download and install it from here.


