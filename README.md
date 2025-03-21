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

# Installation & Setup
1️⃣ **Clone this repository**
```bash
git clone https://github.com/KaykyMorais1/jman.git
```

2️⃣ **Add JMan to the System PATH**

To use JMan from any terminal, you need to add its directory to the system PATH:

- Move jman.bat to a permanent location `(e.g., C:\jman\)`.
- Add `C:\jman\` to the Windows PATH environment variable
- Restart your terminal to apply the changes.

**Make sure that `winget` is installed**

# Release notes

### v1.0.0
- Script launch
