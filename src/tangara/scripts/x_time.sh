#!/bin/bash

#
# File: x_time.sh
#
# Description: Process data since the START_ISO8601_DATETIME environment variable value,
# to END_ISO8601_DATETIME environment variable value
#
# This script create a Tangara Dataset at the end ready to use.
#
# @author Sebastian Rios Sabogal <https://about.me/sebaxtian>
# @version Mon 26 Aug 2024
# @since 1.0
#

echo "Running Tangara Sensors ..."
time {

  # Define datetime interval
  START_ISO8601_DATETIME=$(awk -F= -v key="START_ISO8601_DATETIME" '$1==key {print $2}' ../.env)
  END_ISO8601_DATETIME=$(awk -F= -v key="END_ISO8601_DATETIME" '$1==key {print $2}' ../.env)
  echo 'START_ISO8601_DATETIME: '$START_ISO8601_DATETIME
  echo 'END_ISO8601_DATETIME: '$END_ISO8601_DATETIME
  echo ''

  # Run Tangara Stations
  echo 'Running Tangara Stations ...'
  jupyter nbconvert --execute --to notebook --inplace ../notebooks/tangaras.ipynb &>/dev/null
  echo '... OK'
  echo ''

  # Run PM2.5 Raw Data
  echo 'Running PM2.5 Raw Data ...'
  jupyter nbconvert --execute --to notebook --inplace ../notebooks/pm25_raw.ipynb &>/dev/null
  echo '... OK'
  echo ''

  # Run Temperature Raw Data
  echo 'Running Temperature Raw Data ...'
  jupyter nbconvert --execute --to notebook --inplace ../notebooks/temp_raw.ipynb &>/dev/null
  echo '... OK'
  echo ''

  # Run Humidity Raw Data
  echo 'Running Humidity Raw Data ...'
  jupyter nbconvert --execute --to notebook --inplace ../notebooks/hum_raw.ipynb &>/dev/null
  echo '... OK'
  echo ''

  # Run Tangara Dataset
  echo 'Running Tangara Dataset ...'
  jupyter nbconvert --execute --to notebook --inplace ../notebooks/tangara_dataset.ipynb &>/dev/null
  echo '... OK'
  echo ''

}
echo "Finished !!"
