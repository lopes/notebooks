#!/bin/sh
# Normalizes file names to keep consistency.  Usually, Google Colab
# changes dashes by underscores and this script fixes it.
#
# IMPORTANT: This script aims just to fix simple naming mistakes!
#
# Usage: From the root of this project, run:
#   librarian/cataloguer.sh
#
# Author: Joe Lopes <lopes.id>
# Date..: 2024-01-22
##


find ./library \
  -type f \
  -name "*.ipynb" \
  -exec sh -c '\
    for f do
      mv -v $f $(\
       echo $f |\
       tr '[:upper:]' '[:lower:]' |\
       sed 's/_/-/g'\
      )
    done \
  ' {} +
