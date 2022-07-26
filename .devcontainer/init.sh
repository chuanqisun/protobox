### Make git client easier to use

echo Apply Git defaults for tinykb repo...

# Start echo commands
set -x;

# Disable pager to prevent git branch from disappearing after ESC
git config pager.branch false

# Store creds inside container
git config credential.helper store

# Azure DevOps uses http path
git config credential.useHttpPath true

# Use rebase as default merge strategy
git config pull.rebase false

# Stop echo commands
set +x;