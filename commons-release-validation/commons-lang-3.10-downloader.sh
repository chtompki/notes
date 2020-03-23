#!/bin/bash

BASE_NEXUS_URL="https://repository.apache.org/content/repositories/orgapachecommons-1495/org/apache/commons/commons-lang3/3.10/"

ARTIFACTS="commons-lang3-3.10-javadoc.jar;commons-lang3-3.10-javadoc.jar.asc;commons-lang3-3.10-javadoc.jar.md5;commons-lang3-3.10-javadoc.jar.sha1;commons-lang3-3.10-sources.jar;commons-lang3-3.10-sources.jar.asc;commons-lang3-3.10-sources.jar.md5;commons-lang3-3.10-sources.jar.sha1;commons-lang3-3.10-test-sources.jar;commons-lang3-3.10-test-sources.jar.asc;commons-lang3-3.10-test-sources.jar.md5;commons-lang3-3.10-test-sources.jar.sha1;commons-lang3-3.10-tests.jar;commons-lang3-3.10-tests.jar.asc;commons-lang3-3.10-tests.jar.md5;commons-lang3-3.10-tests.jar.sha1;commons-lang3-3.10.jar;commons-lang3-3.10.jar.asc;commons-lang3-3.10.jar.md5;commons-lang3-3.10.jar.sha1;commons-lang3-3.10.pom;commons-lang3-3.10.pom.asc;commons-lang3-3.10.pom.md5;commons-lang3-3.10.pom.sha1"

IFS=';' read -r -a array <<< "${ARTIFACTS}"

for element in "${array[@]}"
do
	ARTIFACT_NAME=$(echo $element | cut -d '/' -f7)
	echo $ARTIFACT_NAME
	URL="${BASE_NEXUS_URL}${element}"
	curl $URL -o $ARTIFACT_NAME
done
