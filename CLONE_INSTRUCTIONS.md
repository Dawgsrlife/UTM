# Cloning UTM Repository with Nested Submodules

### Option 1: One-Command Clone (Recommended)

```git
git clone --recursive https://github.com/Dawgsrlife/UTM.git
```

### Option 2: Step-by-Step Approach

```git
# Clone the main repository
git clone https://github.com/Dawgsrlife/UTM.git

# Navigate into the cloned directory
cd UTM

# Initialize and update all submodules recursively
git submodule update --init --recursive
```

### Option 3: If You Already Have a Partial Clone

```git
# If you already cloned but missing submodules
cd UTM

# Initialize and update all submodules recursively
git submodule update --init --recursive

# Ensure all submodules are on their proper branches
git submodule foreach --recursive 'git checkout main || git checkout master || echo "No main/master branch"'

# Pull latest changes for all submodules
git submodule update --remote --recursive
```

### Verification Commands (Run After Clone)

```git
# Verify all submodules are properly initialized
git submodule status --recursive

# Check specifically for third year courses
git submodule status --recursive | grep "Third Year"

# Verify WDI nested submodule is working
cd "! Third Year/Fall Term/CSC373/assignments/WDI"
git status
git remote -v
```

### Key Points:

- `--recursive` flag handles nested submodules (like WDI within CSC373)
- Works for complex structures: UTM → CSC373 → WDI
- Initializes all submodules in the correct order
- Maintains proper branch tracking

### Pro Tip:

- The Option 1 single command is your best bet - it handles everything automatically including the WDI submodule nested within CSC373!
