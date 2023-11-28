#!/bin/bash

# Color Definitions
GREEN="\e[1m\e[1;32m" # Green color
RED="\e[1m\e[1;31m"   # Red color
BLUE='\033[0;34m'     # Blue color
NC="\e[0m"            # No color

# Function to print the logo
function printLogo {
  bash <(curl -s https://raw.githubusercontent.com/appieasahbie/testnet-guides/main/utils/logo.sh)
}

# Function to print a line separator
function printLine {
  echo "------------------------------------------------------------------------------------"
}

# Function to print in green color
function printGreen {
  echo -e "${GREEN}${1}${NC}"
}

# Function to print in red color
function printRed {
  echo -e "${RED}${1}${NC}"
}

# Function to print in blue color
function printBlue {
  echo -e "${BLUE}${1}${NC}"
}

# Function to add a directory to the PATH
function addToPath {
  source $HOME/.bash_profile
  PATH_EXIST=$(grep "${1}" $HOME/.bash_profile)
  if [ -z "$PATH_EXIST" ]; then
    echo "export PATH=\$PATH:${1}" >> $HOME/.bash_profile
  fi
}
