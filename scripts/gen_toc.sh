#!/usr/bin/env bash

for f in *.md; do
  if [ "$f" == "README.md" ]; then
    continue
  fi

  title=$(head -1 $f|sed 's/# //')
  echo "* [${title}](./${f})"
done

