#!/bin/bash

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

USAGE="Usage: `basename $0` [--password PASSWORD]"

# Parse args to determine security settings
while [[ $# > 0 ]]
do
key="$1"
case $key in
    --password)
    PASSWORD="$2"
    export PASSWORD
    shift # past argument
    ;;
    --contest)
    CONTEST="$2"
    export CONTEST
    shift # past argument
    ;;
    *) # unknown option
    ;;
esac
shift # past argument or value
done

if [ -z "${PASSWORD:+x}" ]; then
  echo "ERROR: Must set PASSWORD if running in secure mode"
  echo "$USAGE"
  exit 1
fi

if [ -z "${CONTEST:+x}" ]; then
  echo "ERROR: Must set CONTEST folder name"
  echo "$USAGE"
  exit 1
fi

# Bring up a notebook container, using container name as project name
docker-compose up -d
