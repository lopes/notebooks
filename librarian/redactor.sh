#!/bin/sh
# Cleans up the output fields from all notebooks.
# Should be used before each commmit to avoid leaking information.
#
# Requires Jupyter Notebook installed.
# Usage: From the root of this project, run:
#   librarian/redactor.sh
#
# Author: Joe Lopes <lopes.id>
# Date..: 2024-01-19
##

find ./library \
  -type f \
  -name "*.ipynb" \
  -exec \
    jupyter nbconvert --clear-output --inplace {} \
  \;
