#!/bin/bash -x

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )" && \
cd "${DIR}"  && \
pip3 install --user -r requirements.txt ||
{ echo "Error installing python required modules"; exit 1; }

python3 spot_account_aws.py "$@"