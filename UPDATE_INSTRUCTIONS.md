# Updating UTM Repository with All Changes

> **Note:** These commands are optimized for PowerShell on Windows.

# for push

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

# Option 0: Just USE THIS!

```powershell
git pull origin main;
git pull --recurse-submodules;
git submodule update --init --recursive --remote;
git submodule foreach --recursive 'git fetch origin --quiet; b=$(git symbolic-ref --short -q HEAD 2>/dev/null || echo); if [ -z "$b" ]; then if git show-ref --verify --quiet refs/heads/main; then git checkout -q main || true; elif git show-ref --verify --quiet refs/heads/master; then git checkout -q master || true; else echo NO_MAIN_OR_MASTER; fi; else echo BRANCH:$b; fi'
git pull origin main;
git pull --recurse-submodules;
git submodule update --init --recursive --remote;
git submodule foreach --recursive 'git fetch origin --quiet; b=$(git symbolic-ref --short -q HEAD 2>/dev/null || echo); if [ -z "$b" ]; then if git show-ref --verify --quiet refs/heads/main; then git checkout -q main || true; elif git show-ref --verify --quiet refs/heads/master; then git checkout -q master || true; fi; b=$(git symbolic-ref --short -q HEAD 2>/dev/null || echo); fi; if [ -n "$b" ] && git show-ref --verify --quiet "refs/remotes/origin/$b"; then git pull --ff-only --recurse-submodules origin "$b" || true; else git pull --ff-only --recurse-submodules || true; fi; git submodule update --init --recursive --remote || true'
```

...and follow up with these:

## branch confirmation:

```powershell
git submodule foreach --recursive 'b=$(git symbolic-ref --short -q HEAD 2>/dev/null || echo); if [ -z "$b" ]; then echo DETACHED; else echo BRANCH:$b; fi'
```

## (OPTIONAL) force-fix if needed:

```powershell
git submodule foreach --recursive 'git fetch origin --quiet; b=$(git symbolic-ref --short -q HEAD 2>/dev/null || echo); if [ -z "$b" ]; then if git show-ref --verify --quiet refs/heads/main; then git checkout -q main; elif git show-ref --verify --quiet refs/heads/master; then git checkout -q master; fi; fi; b=$(git symbolic-ref --short -q HEAD 2>/dev/null || echo); echo BRANCH:$b'
```

## final status check:

```powershell
git submodule status --recursive
```

### Option 1: One-Command Update (Recommended)

```powershell
git pull origin main; git submodule update --remote --recursive; git submodule foreach --recursive 'git checkout main; if (!$?) { git checkout master }'
```

### Option 2: Step-by-Step Approach

```powershell
# Navigate to your UTM directory
cd path/to/your/UTM

# Pull changes from main UTM repository
git pull origin main

# Update all submodules to their latest commits
git submodule update --remote --recursive

# Ensure all submodules are on proper branches (not detached HEAD)
git submodule foreach --recursive 'git checkout main; if (!$?) { git checkout master }; if (!$?) { Write-Host \"Staying on current branch\" }'
```

### Option 3: If You Encounter Sync Issues

```powershell
# Reset and force update everything
git submodule foreach --recursive 'git reset --hard'

# Force update all submodules
git submodule update --init --recursive --force

# Pull latest changes for all submodules
git submodule update --remote --recursive
```

### Verification Commands (Run After Update)

```powershell
# Verify everything is up to date
git status

# Check all submodules are properly synced
git submodule status --recursive

# Check specifically for third year courses
git submodule status --recursive | Select-String 'Third Year'

# Verify WDI nested submodule is working
cd '! Third Year/Fall Term/CSC373/assignments/WDI'
git status
git remote -v
```

### Key Points:

- `git pull origin main` gets your latest UTM repo changes
- `git submodule update --remote --recursive` pulls all submodule updates including WDI
- The `foreach` command ensures no detached HEAD states
- Handles the nested CSC373 → WDI submodule structure automatically
- **PowerShell Note:** Use semicolons (`;`) instead of `&&` to chain commands

### Pro Tip:

- The Option 1 single command is your best bet - it handles everything automatically including syncing the WDI submodule nested within CSC373!
- In PowerShell, use single quotes (`'`) for paths with special characters to avoid parsing issues
