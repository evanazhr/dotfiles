# File Organizer

A lightweight and efficient Bash script to automatically organize files in a directory based on their extensions. It sorts files into categorized folders (`Documents`, `Images`, `Videos`, `Archives`, `Installers`, `Code`, and `Others`), making it an ideal utility for cleaning up messy directories like `~/Downloads`.

---

## 📋 Key Features
- **Extension-Based Sorting**: Automatically groups files into logical categories using standard file extensions.
- **Flexible Target Directory**: Can organize the current working directory by default or target any specified custom directory via command-line arguments.
- **Self-Preservation**: Automatically skips itself (`organize.sh`) so the script doesn't accidentally move itself during execution.
- **Dynamic Folder Creation**: Creates category folders and an `Others` fallback folder only when needed.

---

## 🛠️ Supported Categories & Extensions
- **Documents**: `pdf`, `doc`, `docx`, `txt`, `odt`, `xls`, `xlsx`, `ppt`, `pptx`
- **Images**: `jpg`, `jpeg`, `png`, `gif`, `svg`, `webp`, `ico`
- **Videos**: `mp4`, `mkv`, `avi`, `mov`, `webm`
- **Archives**: `zip`, `tar`, `gz`, `bz2`, `xz`, `rar`, `7z`
- **Installers**: `deb`, `rpm`, `AppImage`, `iso`, `bin`, `run`
- **Code**: `sh`, `py`, `js`, `ts`, `html`, `css`, `cpp`, `c`, `json`
- **Others**: Any other file types that do not match the above lists.

---

## 🚀 Usage Guide

1. **Save the Script**: Save the script code into a file named `organize.sh`.
2. **Grant Execution Permissions**:
   ```bash
   chmod +x organize.sh
3. **Run The Script**:
   ```bash
   ./organize.sh
   ```
   or
   ```bash
   ./organize.sh [folder name]
   ```