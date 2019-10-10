#!/usr/bin/env bash

script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

lisp download-blobs nuklear https://github.com/borodust/bodge-nuklear \
     "$script_dir/" $1
