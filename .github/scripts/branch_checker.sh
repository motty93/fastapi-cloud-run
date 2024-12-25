#!/bin/bash

BRANCH=$(git symbolic-ref HEAD --short)

if [ "${BRANCH}" = master ] || [ "${BRANCH}" = dev ] || [ "${BRANCH}" = staging ] || [ "${BRANCH}" = main ] || [ "${BRANCH}" = production ]; then
  echo "${BRANCH}へのコミットは禁止されています。"
  exit 1
fi
