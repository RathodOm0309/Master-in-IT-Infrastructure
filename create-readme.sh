#!/bin/bash

# Create README.md in every directory except .git

find . -type d -not -path "./.git*" | while read dir
do
    if [ ! -f "$dir/README.md" ]; then
        folder=$(basename "$dir")

        cat > "$dir/README.md" <<EOF
# $folder

This folder contains files related to **$folder**.

## Contents

- Documentation
- PDF files
- Notes
- Tasks
- Assessments
EOF

        echo "Created: $dir/README.md"
    else
        echo "Exists : $dir/README.md"
    fi
done

echo ""
echo "All README.md files have been created."
