#!/bin/bash
curl $1 | grep -o 'https:\/\/thunderstore.io\/package\/download\/[^"]*' | xargs -I {} curl -L -o tmp/file.zip {}
cd tmp
unzip file.zip
cd ..
