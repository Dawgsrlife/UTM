# UTM Repository - Update Instructions

> **Note:** These commands are optimized for PowerShell on Windows.

---

## 📤 Pushing Changes (Submodules + Main Repo)

Run these commands to push all changes from submodules and the main repository:

```powershell
# Stage all changes in each submodule
git submodule foreach "git add -A"

# Commit changes in each submodule
git submodule foreach "git commit -m 'Update submodule'"

# Push changes from each submodule to their remote
git submodule foreach "git push"

# Stage the submodule pointer updates in the main repository
git add .

# Commit the submodule pointer updates in the main repository
git commit -m "Update submodule references"

# Push the main repository changes
git push
```

---

## 📥 Pulling Updates (Main Repo + Active Submodules)

Run these commands to pull the latest changes from the main repository and **Third/Fourth Year submodules only** (skips First/Second Year to avoid redundant network fetches for archived repos):

```powershell
git pull origin main;
git pull --recurse-submodules;
git submodule update --init --recursive --remote;

# Branch-track and pull only active (Third Year & Fourth Year) submodules
$base = (Get-Location).Path
$activeModules = @(
    "! Third Year/Fall Term/CSC258",
    "! Third Year/Fall Term/CSC324",
    "! Third Year/Fall Term/CSC373",
    "! Third Year/Fall Term/CSC384",
    "! Third Year/Winter Term/CSC301",
    "! Third Year/Winter Term/CSC309",
    "! Third Year/Winter Term/CSC343"
    # Add "! Fourth Year/..." entries here as they are created
    # Note: CSC301 C2 MarkUs repo (group_2556) is a nested submodule inside CSC301,
    # accessible at: ! Third Year/Winter Term/CSC301/Assignments/A2/group_2556
)
foreach ($m in $activeModules) {
    $p = Join-Path $base $m
    if (Test-Path "$p\.git") {
        Write-Host "==> $m"
        Push-Location $p
        git fetch origin --quiet
        $b = git symbolic-ref --short -q HEAD 2>$null
        if ($b) { git pull --ff-only origin $b } else { git pull --ff-only }
        Pop-Location
    }
}
```

> **To restore full all-submodules pull (First, Second, Third, Fourth Year):**
> Replace the `$activeModules` loop above with these original `git submodule foreach` commands:
> ```powershell
> git submodule foreach --recursive 'git fetch origin --quiet; b=$(git symbolic-ref --short -q HEAD 2>/dev/null || echo); if [ -z "$b" ]; then if git show-ref --verify --quiet refs/heads/main; then git checkout -q main || true; elif git show-ref --verify --quiet refs/heads/master; then git checkout -q master || true; else echo NO_MAIN_OR_MASTER; fi; else echo BRANCH:$b; fi'
> git submodule foreach --recursive 'git fetch origin --quiet; b=$(git symbolic-ref --short -q HEAD 2>/dev/null || echo); if [ -z "$b" ]; then if git show-ref --verify --quiet refs/heads/main; then git checkout -q main || true; elif git show-ref --verify --quiet refs/heads/master; then git checkout -q master || true; fi; b=$(git symbolic-ref --short -q HEAD 2>/dev/null || echo); fi; if [ -n "$b" ] && git show-ref --verify --quiet "refs/remotes/origin/$b"; then git pull --ff-only --recurse-submodules origin "$b" || true; else git pull --ff-only --recurse-submodules || true; fi; git submodule update --init --recursive --remote || true'
> ```

---

## 📦 After Cloning (Initialize Submodules)

If you just cloned the repository and submodules aren't initialized yet, run:

```powershell
git submodule update --init --recursive
```

This will:

- Initialize all submodules (including nested ones)
- Checkout the correct commits
- Set up the submodule structure properly

---

## ✅ Verification

After pulling or initializing, verify everything is properly synced:

```powershell
# Check all submodules status
git submodule status --recursive

# Verify main repo status
git status
```

---

## 💡 Key Points

- **Push workflow:** Submodules first, then main repo
- **Pull workflow:** Main repo first, then active submodules (Third/Fourth Year) with branch tracking
- **Active submodules:** Only Third/Fourth Year are branch-tracked on pull; First/Second Year are intentionally skipped to save time
- **Restore all-submodules pull:** See the note block inside the pull section for the original `git submodule foreach` commands
- **After clone:** Always run `git submodule update --init --recursive`
- **PowerShell:** Use semicolons (`;`) to chain commands
- **Nested submodules:** Commands handle nested structures automatically (e.g., CSC373 → WDI)
