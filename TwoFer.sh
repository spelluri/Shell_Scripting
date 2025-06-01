#!/usr/bin/env bash
name="$1"

if [ -z "$name" ]; then
  # No name provided
  echo "One for you, one for me."
else
  # Name provided
  echo "One for $name, one for me."
fi
