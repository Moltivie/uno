#!/bin/bash
# Build script for UNO Telegram bot

echo "Starting build process..."

# Check if translations are enabled
if [ "$ENABLE_TRANSLATIONS" = "true" ]; then
    echo "Translations enabled, installing gettext..."
    apt-get update && apt-get install -y gettext
    
    echo "Compiling translation files..."
    cd locales && ./compile.sh
    cd ..
else
    echo "Translations disabled, skipping compilation"
fi

echo "Build completed successfully!" 