#!/usr/bin/sh

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color
URL_P1="https://github.com/"
URL_P2=".git"

if [ -d "$2" ]; then
    echo -e "${GREEN}[INFO]${NC} Folder $2 found."
    cd "$2"
    if [ -d "$URL_P2" ]; then
        echo -e "${GREEN}[INFO]${NC} Folder $2 contains a valid GitHub repository."
        git pull
    else
        echo -e "${GREEN}[INFO]${NC} Folder $2 is not a valid GitHub repository"
        cd ..
        git clone $URL_P1$1"/"$2$URL_P2
    fi
else
    echo -e "${YELLOW}[WARN]${NC} Folder $2 doesn't exist; creating and cloning repository..."
    git clone $URL_P1$1"/"$2$URL_P2
fi
echo -e "${GREEN}[INFO]${NC} All done."
