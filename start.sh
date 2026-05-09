#!/bin/bash
# FreshClean Dry Cleaning Billing System - Startup Script

echo ""
echo "╔══════════════════════════════════════════╗"
echo "║   FreshClean Dry Cleaning Billing App    ║"
echo "╚══════════════════════════════════════════╝"
echo ""

# Check Python
if ! command -v python3 &> /dev/null; then
    echo "❌ Python3 not found. Please install Python 3.8+"
    exit 1
fi

# Install dependencies
echo "📦 Installing dependencies..."
pip install flask flask-cors openpyxl --break-system-packages -q

# Start app
echo "🚀 Starting server at http://localhost:5055"
echo "   Press Ctrl+C to stop"
echo ""
python3 app.py
