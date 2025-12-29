#!/bin/sh

if [ -d /proc/ish ] && [ -n "$TERMUX_VERSION" ]; then
    echo "iSH and Termux - ok beyond unlikely"
fi

# short form condition
[ -d /proc/ish ] && [ -n "$TERMUX_VERSION" ] && {
    echo "iSH and Termux - ok beyond unlikely"
}

if [ -d /proc/ish ] || [ -n "$TERMUX_VERSION" ]; then
    echo "iSH or Termux"
fi

if [ ! -d /proc/ish ] && [ -z "$TERMUX_VERSION" ]; then
    echo "Neiher iSH or Termux"
fi

echo "Done!"
