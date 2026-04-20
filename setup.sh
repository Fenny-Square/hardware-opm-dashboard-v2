#!/bin/bash

# Hardware OPM Dashboard Setup Script
# This script helps you quickly set up and customize your dashboard

set -e

echo "🔧 Hardware OPM Dashboard Setup"
echo "================================"
echo ""

# Check if git is initialized
if [ ! -d .git ]; then
    echo "❌ Error: Not a git repository. Please run 'git init' first."
    exit 1
fi

# Get user input
echo "Let's customize your dashboard!"
echo ""

read -p "Enter your project name: " PROJECT_NAME
read -p "Enter your GitHub username or organization: " GITHUB_USER
read -p "Enter your repository name [hardware-opm-dashboard]: " REPO_NAME
REPO_NAME=${REPO_NAME:-hardware-opm-dashboard}

echo ""
echo "Configuration:"
echo "  Project: $PROJECT_NAME"
echo "  GitHub: $GITHUB_USER/$REPO_NAME"
echo ""
read -p "Is this correct? (y/n): " CONFIRM

if [ "$CONFIRM" != "y" ]; then
    echo "Setup cancelled."
    exit 0
fi

echo ""
echo "🔄 Updating files..."

# Update docs/index.html
if [ -f docs/index.html ]; then
    sed -i.bak "s|Hardware Program Dashboard|$PROJECT_NAME Dashboard|g" docs/index.html
    sed -i.bak "s|your-org/your-repo|$GITHUB_USER/$REPO_NAME|g" docs/index.html
    echo "✅ Updated docs/index.html"
fi

# Update docs/specs/prd.html
if [ -f docs/specs/prd.html ]; then
    sed -i.bak "s|\[Your Hardware Product\]|$PROJECT_NAME|g" docs/specs/prd.html
    echo "✅ Updated docs/specs/prd.html"
fi

# Update docs/bom/latest.html
if [ -f docs/bom/latest.html ]; then
    sed -i.bak "s|Hardware Program Dashboard|$PROJECT_NAME Dashboard|g" docs/bom/latest.html
    echo "✅ Updated docs/bom/latest.html"
fi

# Update README.md
if [ -f README.md ]; then
    sed -i.bak "s|your-org/hardware-opm-dashboard|$GITHUB_USER/$REPO_NAME|g" README.md
    sed -i.bak "s|your-org.github.io/hardware-opm-dashboard|$GITHUB_USER.github.io/$REPO_NAME|g" README.md
    echo "✅ Updated README.md"
fi

# Clean up backup files
find . -name "*.bak" -delete

echo ""
echo "✅ Configuration complete!"
echo ""
echo "Next steps:"
echo "1. Review the changes: git diff"
echo "2. Commit the changes: git add -A && git commit -m 'Customize dashboard for $PROJECT_NAME'"
echo "3. Create GitHub repo: https://github.com/new"
echo "4. Add remote: git remote add origin https://github.com/$GITHUB_USER/$REPO_NAME.git"
echo "5. Push to GitHub: git push -u origin main"
echo "6. Enable GitHub Pages in repository settings"
echo ""
echo "📚 See SETUP.md for detailed instructions"
echo ""
echo "Your dashboard will be available at:"
echo "https://$GITHUB_USER.github.io/$REPO_NAME/"
echo ""
