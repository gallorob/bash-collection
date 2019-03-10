#!/bin/sh

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[1;31m'
NC='\033[0m' # No Color
PID=$(ps aux | grep -m 1 $1 | grep -v grep | grep -v "terminatePrcs.sh" | awk '{print $2}')

if [ "$PID" != "" ]; then
        echo -e "${YELLOW}[WARN]${NC} Executing => kill -SIGTERM $PID"
        kill -TERM "$PID"
        if [ "$?" = 0 ]; then
            echo -e "${GREEN}[SUCCESS]${NC} Process \""$1"\" killed."
        else
            echo -e "${RED}[ERROR]${NC} Process \""$1"\" could not be killed.\n\tMaybe you need admin privileges?"
        fi
    else
        echo -e "${RED}[ERROR]${NC} Process \""$1"\" doesn't exist."
fi
