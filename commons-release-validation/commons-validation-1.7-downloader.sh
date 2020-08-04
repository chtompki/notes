#!/bin/bash

BASE_NEXUS_URL="https://repository.apache.org/content/repositories/orgapachecommons-1520/commons-validator/commons-validator/1.7/"

ARTIFACTS="commons-validator-1.7-javadoc.jar;commons-validator-1.7-javadoc.jar.asc;commons-validator-1.7-javadoc.jar.md5;commons-validator-1.7-javadoc.jar.sha1;commons-validator-1.7-sources.jar;commons-validator-1.7-sources.jar.asc;commons-validator-1.7-sources.jar.md5;commons-validator-1.7-sources.jar.sha1;commons-validator-1.7-test-sources.jar;commons-validator-1.7-test-sources.jar.asc;commons-validator-1.7-test-sources.jar.md5;commons-validator-1.7-test-sources.jar.sha1;commons-validator-1.7-tests.jar;commons-validator-1.7-tests.jar.asc;commons-validator-1.7-tests.jar.md5;commons-validator-1.7-tests.jar.sha1;commons-validator-1.7.jar;commons-validator-1.7.jar.asc;commons-validator-1.7.jar.md5;commons-validator-1.7.jar.sha1;commons-validator-1.7.pom;commons-validator-1.7.pom.asc;commons-validator-1.7.pom.md5;commons-validator-1.7.pom.sha1"

IFS=';' read -r -a array <<< "${ARTIFACTS}"

for element in "${array[@]}"
do
	ARTIFACT_NAME=$(echo $element | cut -d '/' -f7)
	echo $ARTIFACT_NAME
	URL="${BASE_NEXUS_URL}${element}"
	curl $URL -o $ARTIFACT_NAME
done
