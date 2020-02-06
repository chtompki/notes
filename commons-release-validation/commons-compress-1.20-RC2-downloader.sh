#!/bin/bash

BASE_NEXUS_URL="https://repository.apache.org/content/repositories/orgapachecommons-1492/org/apache/commons/commons-compress/1.20/"

ARTIFACTS="commons-compress-1.20-javadoc.jar;commons-compress-1.20-javadoc.jar.asc;commons-compress-1.20-javadoc.jar.md5;commons-compress-1.20-javadoc.jar.sha1;commons-compress-1.20-sources.jar;commons-compress-1.20-sources.jar.asc;commons-compress-1.20-sources.jar.md5;commons-compress-1.20-sources.jar.sha1;commons-compress-1.20-test-sources.jar;commons-compress-1.20-test-sources.jar.asc;commons-compress-1.20-test-sources.jar.md5;commons-compress-1.20-test-sources.jar.sha1;commons-compress-1.20-tests.jar;commons-compress-1.20-tests.jar.asc;commons-compress-1.20-tests.jar.md5;commons-compress-1.20-tests.jar.sha1;commons-compress-1.20.jar;commons-compress-1.20.jar.asc;commons-compress-1.20.jar.md5;commons-compress-1.20.jar.sha1;commons-compress-1.20.pom;commons-compress-1.20.pom.asc;commons-compress-1.20.pom.md5;commons-compress-1.20.pom.sha1"

IFS=';' read -r -a array <<< "${ARTIFACTS}"

for element in "${array[@]}"
do
	ARTIFACT_NAME=$(echo $element | cut -d '/' -f7)
	echo $ARTIFACT_NAME
	URL="${BASE_NEXUS_URL}${element}"
	curl $URL -o $ARTIFACT_NAME
done
