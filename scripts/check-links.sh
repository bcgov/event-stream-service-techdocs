#!/bin/bash
# Script to build documentation and check for broken links using htmltest
# This matches the CI validation tool to ensure consistency

set -e

echo "🔨 Building documentation..."
mkdocs build

echo ""
echo "🔍 Checking for broken links with htmltest..."

# Use htmltest if available, otherwise provide instructions
if command -v htmltest &> /dev/null; then
    # Run htmltest on the built site directory with explicit config file
    # This matches the CI validation exactly
    htmltest -c .htmltest.yml site/ || {
        echo ""
        echo "❌ Link validation failed. Please fix the errors above."
        exit 1
    }

    echo ""
    echo "✅ Link check complete. No broken links found."
else
    echo "⚠️  htmltest not installed."
    echo ""
    echo "In the devcontainer, htmltest should be installed automatically."
    echo "If you're running outside the devcontainer, install htmltest:"
    echo "  wget https://github.com/wjdp/htmltest/releases/download/v0.17.0/htmltest_0.17.0_linux_amd64.tar.gz"
    echo "  tar -xzf htmltest_0.17.0_linux_amd64.tar.gz"
    echo "  sudo mv htmltest /usr/local/bin/"
    echo ""
    echo "Or manually check:"
    echo "  1. Build the docs: mkdocs build"
    echo "  2. Open site/index.html in your browser"
    echo "  3. Navigate through all pages and check for broken links"
    exit 1
fi

