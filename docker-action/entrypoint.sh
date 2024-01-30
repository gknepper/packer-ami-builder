#!/bin/bash
set -e

cd "${INPUT_WORKDIR:-.}"

# Show Packer version
packer version

# Validate configuration
packer ${INPUT_PACKERARGSVALIDATE}

# Install plugins 
packer ${INPUT_PACKERARGSINIT}

# Run packer with the given arguments
packer ${INPUT_PACKERARGSBUILD}
