#!/usr/bin/env sh

# Initial working directory should be the script's directory despite the location from where it's being run.
# Project root is exactly one level above that.
# Dataset directory is in project's root.

WORKING_DIR=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
PROJECT_ROOT_DIR="${WORKING_DIR}/.."
DATASET_DIR="${PROJECT_ROOT_DIR}/dataset"

# Create and populate dataset folder. Will overwrite dataset directory if it already exists.

rm -rf "${DATASET_DIR}"; mkdir "${DATASET_DIR}"
wget https://archive.ics.uci.edu/ml/machine-learning-databases/statlog/german/german.data -P "${DATASET_DIR}"
wget https://archive.ics.uci.edu/ml/machine-learning-databases/statlog/german/german.data-numeric -P "${DATASET_DIR}"
wget https://archive.ics.uci.edu/ml/machine-learning-databases/statlog/german/german.doc -P "${DATASET_DIR}"