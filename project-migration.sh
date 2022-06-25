#!/bin/bash

dirs="src/test/java
src/main/java"

for dir in $dirs
do
  mkdir -p "$dir/com/github/piotrkot"
  mv "$dir/com/jcabi/http" "$dir/com/github/piotrkot/."
  rm -R "$dir/com/jcabi"
done

find src/. -type f -print0 | xargs -0 sed -i 's/com\.jcabi\.http/com.github.piotrkot.http/g'

find src/. -type f -print0 | xargs -0 sed -i 's/com\/jcabi\/http/com\/github\/piotrkot\/http/g'

exit 0
