#!/bin/bash

cat >> .bootignore <<__IGNORE
$1
__IGNORE

FILES="`cat .bootignore | uniq | sort`"

> .bootignore

for IGNORED in "$FILES"; do
   printf "%s\n" $IGNORED >> .bootignore
   cat .bootignore
done
