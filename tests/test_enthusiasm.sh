#!/bin/bash

MESSAGE_FILE="message.txt"

if [ ! -f "$MESSAGE_FILE" ]; then
    echo "❌ File not found: $MESSAGE_FILE"
    exit 1
fi

CONTENT=$(cat "$MESSAGE_FILE" | tr -d '\n' | sed 's/[[:space:]]*$//')

if [[ "$CONTENT" == *"!" ]]; then
    echo "✅ Enthusiastic enough. CI passed."
    echo "Message: $CONTENT"
    exit 0
else
    echo "❌ Not enthusiastic enough. CI failed."
    echo "Message: $CONTENT"
    exit 1
fi
