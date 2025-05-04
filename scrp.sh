#!/bin/bash

# Default message if none is provided
MESSAGE="${1:-I am the mighty dragon of DevOps!}"

# Check if cowsay is installed
if ! command -v cowsay &> /dev/null
then
    echo "❌ cowsay is not installed. Install it first:"
    echo "   sudo apt install cowsay    # Debian/Ubuntu"
    echo "   brew install cowsay        # macOS"
    exit 1
fi

# Run cowsay with the dragon
cowsay -f dragon "$MESSAGE"
