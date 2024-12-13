#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: $0 <pattern_name>"
  exit 1
fi

pattern_name=$1
pattern_path="./patterns/$pattern_name"

if [ ! -e "$pattern_path" ]; then
  echo "Pattern '$pattern_name' does not exist in the patterns directory."
  exit 1
fi

ln -s "$pattern_path" "./favourite-patterns/$pattern_name"

echo "Pattern '$pattern_name' added to favourites."

