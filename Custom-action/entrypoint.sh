#!/bin/bash

# Personalized Greeting
echo "Greetings, $GITHUB_ACTOR! 👋 This is My custom GitHub Action speaking."
figlet -f slant "Welcome Aboard!"

# Fortune Cookie Wisdom
QUOTE=$(curl -s "https://api.quotable.io/random")
AUTHOR=$(echo "$QUOTE" | jq -r '.author')
CONTENT=$(echo "$QUOTE" | jq -r '.content')

echo "\nHere's a bit of wisdom for your coding journey:\n"
echo "\"${CONTENT}\""
echo "- ${AUTHOR}"
