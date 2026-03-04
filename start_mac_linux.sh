#!/bin/bash
echo ""
echo "========================================"
echo "   ResumeAI Pro - Starting Server"
echo "========================================"
echo ""

# Navigate to script directory
cd "$(dirname "$0")/server"

# Check Node.js
echo "[1/3] Checking Node.js..."
if ! command -v node &> /dev/null; then
    echo "ERROR: Node.js not found!"
    echo "Install it with:"
    echo "  Mac:   brew install node   (or download from nodejs.org)"
    echo "  Linux: sudo apt install nodejs npm"
    exit 1
fi
echo "Node.js found: $(node --version)"

# Install dependencies
echo ""
echo "[2/3] Installing dependencies (first run may take 1-2 min)..."
npm install --silent
if [ $? -ne 0 ]; then
    echo "ERROR: npm install failed!"
    exit 1
fi
echo "Dependencies installed: OK"

# Start server
echo ""
echo "[3/3] Starting server..."
echo ""
echo "========================================"
echo " Server running at: http://localhost:3001"
echo " Open your browser to that URL!"
echo " Press Ctrl+C to stop"
echo "========================================"
echo ""
node index.js
