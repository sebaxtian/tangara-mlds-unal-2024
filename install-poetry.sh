#!/bin/bash

#
# File: install-poetry.sh
#
# Install and setup poetry:
# https://python-poetry.org/docs/#installing-with-the-official-installer
#
# @author Sebastian Rios Sabogal - https://about.me/sebaxtian
# @version 1.0
# @since Mon 26 Aug 2024
#

curl -sSL https://install.python-poetry.org | python3 -
poetry --version
poetry completions bash >> ~/.bash_completion
poetry config virtualenvs.in-project true
poetry init
poetry install --no-root
