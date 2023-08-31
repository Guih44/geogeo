#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <target_version> <path>"
    exit 1
fi

target_version=$1
path=$2

previous_version=""

for version in $(ls -d ${path}/H*S*T* | sort -r); do
    if [ "$(basename ${version})" \< "${target_version}" ]; then
        previous_version=$(basename ${version})
        break
    fi
done

if [ -n "${previous_version}" ]; then
    echo "Closest previous version: ${previous_version}"
else
    echo "No previous version found."
fi
