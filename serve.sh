#!/bin/bash

# Start a simple Python HTTP server
echo "🌐 Starting server on http://localhost:8080"
echo "📱 Open in Termux: termux-open http://localhost:8080"
echo "Press Ctrl+C to stop"

# Check if Python is installed
if command -v python3 &> /dev/null; then
    python3 -m http.server 8080
elif command -v python &> /dev/null; then
    python -m SimpleHTTPServer 8080
else
    echo "❌ Python not found. Install with: pkg install python"
    exit 1
fi
