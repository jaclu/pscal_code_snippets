#!/bin/sh

# in posix [] wrappers are optional, any command resulting in a true/false
# result is valid for a condition

if ! command -v ping >/dev/null 2>&1; then
    echo "ERROR: ping not found by non [] wrapped condition"
    exit 2
fi

command -v ping >/dev/null 2>&1 || {
    echo "ERROR: ping not found by chained condition"
    exit 3
}

echo "ping is available"
