#!/bin/bash

# mkdir -p /tmp/phoneme
# cd /tmp/phoneme

svn checkout https://svn.java.net/svn/phoneme~svn/legal legal --username guest
for i in javacall pcsl midp cdc tools jpeg abstractions xmlparser restricted_crypto jsr172; do
      svn checkout https://svn.java.net/svn/phoneme~svn/components/$i/trunk $i --username guest
done
