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

## 📥 Pulling Updates (Main Repo + All Submodules)

Run these commands to pull the latest changes from the main repository and all submodules:

```powershell
git pull origin main;
git pull --recurse-submodules;
git submodule update --init --recursive --remote;
git submodule foreach --recursive 'git fetch origin --quiet; b=$(git symbolic-ref --short -q HEAD 2>/dev/null || echo); if [ -z "$b" ]; then if git show-ref --verify --quiet refs/heads/main; then git checkout -q main || true; elif git show-ref --verify --quiet refs/heads/master; then git checkout -q master || true; else echo NO_MAIN_OR_MASTER; fi; else echo BRANCH:$b; fi'
git submodule foreach --recursive 'git fetch origin --quiet; b=$(git symbolic-ref --short -q HEAD 2>/dev/null || echo); if [ -z "$b" ]; then if git show-ref --verify --quiet refs/heads/main; then git checkout -q main || true; elif git show-ref --verify --quiet refs/heads/master; then git checkout -q master || true; fi; b=$(git symbolic-ref --short -q HEAD 2>/dev/null || echo); fi; if [ -n "$b" ] && git show-ref --verify --quiet "refs/remotes/origin/$b"; then git pull --ff-only --recurse-submodules origin "$b" || true; else git pull --ff-only --recurse-submodules || true; fi; git submodule update --init --recursive --remote || true'
```

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
- **Pull workflow:** Main repo first, then submodules with branch tracking
- **After clone:** Always run `git submodule update --init --recursive`
- **PowerShell:** Use semicolons (`;`) to chain commands
- **Nested submodules:** Commands handle nested structures automatically (e.g., CSC373 → WDI)
