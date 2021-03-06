#!/bin/sh

source virtualenv/bin/activate

set -e
set -u

not_in_env_error() {
    echo "You are not in a virtualenv, please activate it."
    exit 1
}

[ -z "${VIRTUAL_ENV:-}" ] && not_in_env_error

# Install our own packaging helpers
pip install -r requirements.txt
