#!/bin/sh

# Define the relative paths from the .githooks directory
HOOK_SRC="pre-push"
HOOK_DEST="../.git/hooks/pre-push"

# Copy the hook file to the .git/hooks directory
cp $HOOK_SRC $HOOK_DEST

# Make the hook file executable
chmod +x $HOOK_DEST

echo "Git hook installed successfully."
