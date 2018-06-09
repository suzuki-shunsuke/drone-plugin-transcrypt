#!/usr/bin/env bash

if [ -n "$PLUGIN_CIPHER" ]; then
  export TRANSCRYPT_CIPHER=$PLUGIN_CIPHER
fi
if [ -z "$TRANSCRYPT_CIPHER" ]; then
  echo "The environment variable TRANSCRYPT_CIPHER or PLUGIN_CIPHER are required." > /dev/stderr
  exit 1
fi
if [ -n "$PLUGIN_PASSWORD" ]; then
  export TRANSCRYPT_PASSWORD=$PLUGIN_PASSWORD
fi
if [ -z "$TRANSCRYPT_PASSWORD" ]; then
  echo "The environment variable TRANSCRYPT_PASSWORD or PLUGIN_PASSWORD are required." > /dev/stderr
  exit 1
fi

transcrypt -y -c $TRANSCRYPT_CIPHER -p $TRANSCRYPT_PASSWORD
