#!/bin/sh
# Post-create script for devcontainer
# This runs after the container is created to install additional dependencies

set -e

echo "Installing additional MkDocs plugins and tools..."

# Install additional plugins from requirements.txt
pip install --upgrade pip
pip install -r requirements.txt

# Install htmltest for link validation (matches CI)
echo "Installing htmltest..."
HTMLTEST_VERSION="0.17.0"

# Detect architecture and set appropriate binary name
ARCH=$(uname -m)
case "$ARCH" in
    x86_64|amd64)
        HTMLTEST_ARCH="linux_amd64"
        ;;
    aarch64|arm64)
        HTMLTEST_ARCH="linux_arm64"
        ;;
    *)
        echo "Warning: Unsupported architecture $ARCH, defaulting to linux_amd64"
        HTMLTEST_ARCH="linux_amd64"
        ;;
esac

echo "Detected architecture: $ARCH, using htmltest binary: $HTMLTEST_ARCH"
wget -q "https://github.com/wjdp/htmltest/releases/download/v${HTMLTEST_VERSION}/htmltest_${HTMLTEST_VERSION}_${HTMLTEST_ARCH}.tar.gz" -O /tmp/htmltest.tar.gz
tar -xzf /tmp/htmltest.tar.gz -C /tmp
mv /tmp/htmltest /usr/local/bin/htmltest
chmod +x /usr/local/bin/htmltest
rm /tmp/htmltest.tar.gz
htmltest --version || echo "Warning: htmltest installation verification failed"

echo "Verifying installation..."
mkdocs --version
python -c "import mkdocs_ezlinks_plugin; print('ezlinks plugin installed')" || echo "Warning: ezlinks plugin not found"
python -c "import mkpatcher; print('mkpatcher extension installed')" || echo "Warning: mkpatcher extension not found"

echo "✅ DevContainer setup complete!"
echo ""
echo "To build the documentation:"
echo "  mkdocs build"
echo ""
echo "To serve locally (with live reload):"
echo "  mkdocs serve --dev-addr=0.0.0.0:8000"
echo ""
echo "To check for broken links:"
echo "  ./scripts/check-links.sh"

