#!/bin/bash

mkdir src
sfdx force:source:retrieve -x manifest/package.xml -r src -u MyScratchOrg2 
if [ -d "src/classes" ]; then
   sfdx force:source:deploy -p src -l RunAllTestsInOrg -u MyScratchOrg2
else
  sfdx force:source:deploy -p src -u MyScratchOrg2
fi

rm -rf src
