#!/bin/bash

# Set Buildroot directory to the directory where clean.sh is located
BUILDROOT_DIR="$(dirname "$(realpath "$0")")"

if [ -d "$BUILDROOT_DIR" ]; then
    cd "$BUILDROOT_DIR" || exit
    echo "Running 'make distclean' in the Buildroot directory..."
    make distclean
    echo "'make distclean' completed."
else
    echo "Buildroot directory not found at $BUILDROOT_DIR"
    exit 1
fi
