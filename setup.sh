#!/bin/bash

# One-click setup for Ochuna Software Suite
echo "🚀 Setting up Ochuna Software Suite..."
echo "Developer: James Boyid Ochuna"

# Install Python if needed
if ! command -v python3 &> /dev/null; then
    echo "📦 Installing Python..."
    pkg install python -y
fi

# Create homepage
bash homepage.sh

# Make server executable
chmod +x serve.sh

echo ""
echo "✅ Setup complete!"
echo "📌 To launch:"
echo "  1. ./serve.sh"
echo "  2. Open http://localhost:8080"
echo "  3. Or use: termux-open http://localhost:8080"
