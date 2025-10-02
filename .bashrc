# .bashrc

# Function to safely source all .sh files from a specified directory
# It handles existence checks, quoting, and POSIX compliance.
safe_source_dir() {
    local dir="$1"

    # Check if the directory exists
    if [ -d "$dir" ]; then
        # Loop through all files ending in .sh in the directory
        for file in "$dir/"*.sh; do
            # Check if the file actually exists (not the literal "*.sh" string)
            if [ -f "$file" ]; then
                # Source the file using the POSIX-standard '.' command
                . "$file"
            fi
        done
    fi
}

# Source user-specific shell configuration
safe_source_dir "$HOME/.config/shell"

# Source system-specific shell configuration
safe_source_dir "$HOME/.local/config/shell"
