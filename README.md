# JMan v1.0.0 - Java Version Manager
JMan is a simple and efficient tool for managing Java versions on Windows systems. It allows developers to easily switch between different JDK versions directly from the terminal.

# Features:
- ✅ List Installed Versions – Easily list all installed Java versions on your system.
- ✅ Set Active Version – Quickly set the active JDK version for your environment.
- ✅ Install Java Versions – Automatically install missing Java versions using winget.
- ✅ Works with Different Installations – Supports both manually installed and winget-installed JDKs.

# Usage:
- List Installed Versions:
```bash
jman ls
```

- Show Active Java Version:
```bash
jman current
```
- Set a Java Version:
```bash
jman [version]
```

- Install a Java Version:
```bash
jman install [version]
```

**After running the command 'jman [version]', if you want to check if the version is actually set, open another cmd**

# Installation & Setup
1️⃣ **[Download Jman Installer](https://github.com/KaykyMorais1/jman/releases/download/v1.0.0/jmanInstaller.exe)**

**Make sure that `winget` is installed**

**The script will not work if Java is not installed in the default paths, e.g. C:\Program Files\Java, C:\Program Files\Microsoft**

# Release notes

### v1.0.0
- Script launch
