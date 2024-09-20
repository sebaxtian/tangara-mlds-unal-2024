#!/bin/bash

#
# File: concat_tangara_dataset.sh
#
# Description: This script concatenates two Tangara datasets into one dataset
#
# @author Sebastian Rios Sabogal <https://about.me/sebaxtian>
# @version Mon 26 Aug 2024
# @since 1.0
#

echo "Running Concat 2 Tangara Datasets ..."
time {
  jupyter nbconvert --execute --to notebook --inplace ../notebooks/concat_tangara_datasets.ipynb &>/dev/null
  echo '... OK'
  echo ''
}
echo "Finished !!"
