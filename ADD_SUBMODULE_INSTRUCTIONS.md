# Adding New Submodules to UTM Repository

> **Note:** These commands are optimized for PowerShell on Windows.

### Quick Add Command (Default Branch)

```powershell
git submodule add <repository-url> '<path/to/submodule>'
```

Replace `<repository-url>` with the GitHub URL (e.g., `https://github.com/Dawgsrlife/CSC258-2025-.git`) and `<path/to/submodule>` with the desired path (e.g., `'! Third Year/Fall Term/CSC258'`).

**Important:** Use single quotes (`'`) for paths with special characters in PowerShell.

### Add with Specific Branch

If you want to track a specific branch instead of the default:

```powershell
git submodule add -b <branch-name> <repository-url> '<path/to/submodule>'
```

For example:
```powershell
git submodule add -b main https://github.com/Dawgsrlife/CSC258-2025-.git '! Third Year/Fall Term/CSC258'
```

### Step-by-Step Process

1. **Navigate to UTM root directory**
   ```powershell
   cd 'C:\Users\33576\! UTM'
   ```

2. **Add the submodule**
   ```powershell
   git submodule add <repository-url> '<path/to/submodule>'
   ```
   This clones the repository and updates `.gitmodules`.

3. **Verify the addition**
   ```powershell
   git submodule status
   ```
   You should see the new submodule listed.

4. **Commit the changes**
   ```powershell
   git add .gitmodules '<path/to/submodule>'
   git commit -m 'Add <submodule-name> submodule'
   ```

5. **Push to remote (if needed)**
   ```powershell
   git push origin main
   ```

### Important Notes

- The submodule will track the default branch of the remote repository unless `-b` is specified.
- Paths with special characters (like `!`) must be quoted with single quotes in PowerShell.
- After adding, other contributors need to run `git submodule update --init` to clone the submodule.
- If the path already exists and is not empty, the add command will fail.

### Example: Adding CSC258 Submodule

```powershell
cd 'C:\Users\33576\! UTM'
git submodule add https://github.com/Dawgsrlife/CSC258-2025-.git '! Third Year/Fall Term/CSC258'
git add .gitmodules '! Third Year/Fall Term/CSC258'
git commit -m 'Add CSC258 submodule for Fall 2025'
```

### Troubleshooting

- **Path already exists**: Remove or rename the existing directory first.
- **Permission issues**: Ensure you have write access to the directory.
- **Branch not found**: Verify the branch exists in the remote repository.
- **PowerShell quoting issues**: Always use single quotes for paths with special characters.

### Pro Tip

- Always check the remote's default branch with `git ls-remote --symref <url> HEAD` before adding if unsure.
- Use descriptive commit messages for submodule additions.
- In PowerShell, prefer single quotes (`'`) over double quotes (`"`) for paths to avoid variable expansion issues.</content>
<parameter name="filePath">c:\Users\33576\! UTM\ADD_SUBMODULE_INSTRUCTIONS.md