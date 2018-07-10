#!/bin/bash

STAGING_REPO="orgapachecommons-1344"

BASE_NEXUS_URL="https://repository.apache.org/content/repositories/${STAGING_REPO}/org/apache/commons/commons-collections4/4.2/"

ARTIFACTS="commons-collections4-4.2-javadoc.jar;commons-collections4-4.2-javadoc.jar.asc;commons-collections4-4.2-javadoc.jar.md5;commons-collections4-4.2-javadoc.jar.sha1;commons-collections4-4.2-sources.jar;commons-collections4-4.2-sources.jar.asc;commons-collections4-4.2-sources.jar.md5;commons-collections4-4.2-sources.jar.sha1;commons-collections4-4.2-test-sources.jar;commons-collections4-4.2-test-sources.jar.asc;commons-collections4-4.2-test-sources.jar.md5;commons-collections4-4.2-test-sources.jar.sha1;commons-collections4-4.2-tests.jar;commons-collections4-4.2-tests.jar.asc;commons-collections4-4.2-tests.jar.md5;commons-collections4-4.2-tests.jar.sha1;commons-collections4-4.2.jar;commons-collections4-4.2.jar.asc;commons-collections4-4.2.jar.md5;commons-collections4-4.2.jar.sha1;commons-collections4-4.2.pom;commons-collections4-4.2.pom.asc;commons-collections4-4.2.pom.md5;commons-collections4-4.2.pom.sha1"

IFS=';' read -r -a array <<< "${ARTIFACTS}"

for element in "${array[@]}"
do
	ARTIFACT_NAME=$(echo $element | cut -d '/' -f7)
	echo $ARTIFACT_NAME
	URL="${BASE_NEXUS_URL}${element}"
	curl $URL -o $ARTIFACT_NAME
done
