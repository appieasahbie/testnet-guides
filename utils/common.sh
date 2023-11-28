GREEN="\e[1m\e[1;32m" # pink color
RED="\e[1m\e[1;31m" # red color
BLUE='\033[0;34m'   # purple color
NC="\e[0m"          # no color

function printLogo {
  bash <(curl -s https://raw.githubusercontent.com/appieasahbie/testnet-guides/main/utils/logo.sh)
}

function printLine {
  echo "------------------------------------------------------------------------------------"
}

function printPink {
  echo -e "${PINK}${1}${NC}"
}

function printRed {
  echo -e "${RED}${1}${NC}"
}

function printPurple {
  echo -e "${PURPLE}${1}${NC}"
}

function addToPath {
  source $HOME/.bash_profile
  PATH_EXIST=$(grep "${1}" $HOME/.bash_profile)
  if [ -z "$PATH_EXIST" ]; then
    echo "export PATH=\$PATH:${1}" >> $HOME/.bash_profile
  fi
}
