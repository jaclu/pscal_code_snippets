#!/bin/sh


if [ -d /proc/ish ] && [ -n "$TERMUX_VERSION" ]; then
    echo "iSH and Termux - ok beyond unlikely"
fi


if [ -d /proc/ish ] || [ -n "$TERMUX_VERSION" ]; then
    echo "iSH or Termux"
fi


