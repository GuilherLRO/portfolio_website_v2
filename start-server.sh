#!/bin/bash

# Portfolio Website Local Server Startup Script

echo "🚀 Starting Portfolio Website Server..."
echo ""

# Get local IP address (Linux compatible)
LOCAL_IP=$(hostname -I | awk '{print $1}')
if [ -z "$LOCAL_IP" ]; then
    LOCAL_IP=$(ip route get 1 | awk '{print $7}' | head -1)
fi

echo "📋 Available options:"
echo "1. Python HTTP Server (Simple)"
echo "2. Node.js Live Server (Auto-reload)"
echo "3. PHP Server"
echo ""

read -p "Choose option (1-3): " choice

case $choice in
    1)
        echo "🐍 Starting Python HTTP Server..."
        echo "Local: http://localhost:8000"
        echo "Network: http://$LOCAL_IP:8000"
        echo "Press Ctrl+C to stop"
        echo ""
        python3 -m http.server 8000 --bind 0.0.0.0
        ;;
    2)
        if command -v live-server &> /dev/null; then
            echo "📦 Starting Node.js Live Server..."
            echo "Local: http://localhost:8000"
            echo "Network: http://$LOCAL_IP:8000"
            echo ""
            live-server --port=8000 --host=0.0.0.0
        else
            echo "❌ live-server not found. Install with: npm install -g live-server"
        fi
        ;;
    3)
        if command -v php &> /dev/null; then
            echo "🐘 Starting PHP Server..."
            echo "Local: http://localhost:8000"
            echo "Network: http://$LOCAL_IP:8000"
            echo ""
            php -S 0.0.0.0:8000
        else
            echo "❌ PHP not found. Please install PHP."
        fi
        ;;
    *)
        echo "❌ Invalid option"
        ;;
esac 