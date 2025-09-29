# Updating UTM Repository with All Changes

### Option 1: One-Command Update (Recommended)

```git
git pull origin main && git submodule update --remote --recursive && git submodule foreach --recursive 'git checkout main || git checkout master || true'
```

### Option 2: Step-by-Step Approach

```git
# Navigate to your UTM directory
cd path/to/your/UTM

# Pull changes from main UTM repository
git pull origin main

# Update all submodules to their latest commits
git submodule update --remote --recursive

# Ensure all submodules are on proper branches (not detached HEAD)
git submodule foreach --recursive 'git checkout main || git checkout master || echo "Staying on current branch"'
```

### Option 3: If You Encounter Sync Issues

```git
# Reset and force update everything
git submodule foreach --recursive git reset --hard

# Force update all submodules
git submodule update --init --recursive --force

# Pull latest changes for all submodules
git submodule update --remote --recursive
```

### Verification Commands (Run After Update)

```git
# Verify everything is up to date
git status

# Check all submodules are properly synced
git submodule status --recursive

# Check specifically for third year courses
git submodule status --recursive | grep "Third Year"

# Verify WDI nested submodule is working
cd "! Third Year/Fall Term/CSC373/assignments/WDI"
git status
git remote -v
```

### Key Points:

- `git pull origin main` gets your latest UTM repo changes
- `git submodule update --remote --recursive` pulls all submodule updates including WDI
- The `foreach` command ensures no detached HEAD states
- Handles the nested CSC373 → WDI submodule structure automatically

### Pro Tip:

- The Option 1 single command is your best bet - it handles everything automatically including syncing the WDI submodule nested within CSC373!
