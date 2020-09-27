#!/bin/bash

BUILD="src/build"

if [[ $(which ninja) ]] && [[ "/ninja" ]]; then
  ninja -C $BUILD install
else
  echo "Ninja not found: To build install Meson."
  exit 1
fi