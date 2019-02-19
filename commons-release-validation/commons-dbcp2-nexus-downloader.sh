#!/bin/bash

BASE_NEXUS_URL="https://repository.apache.org/content/repositories/orgapachecommons-1425/org/apache/commons/commons-dbcp2/2.6.0/"

ARTIFACTS=";commons-dbcp2-2.6.0-javadoc.jar;commons-dbcp2-2.6.0-javadoc.jar.asc;commons-dbcp2-2.6.0-javadoc.jar.md5;commons-dbcp2-2.6.0-javadoc.jar.sha1;commons-dbcp2-2.6.0-sources.jar;commons-dbcp2-2.6.0-sources.jar.asc;commons-dbcp2-2.6.0-sources.jar.md5;commons-dbcp2-2.6.0-sources.jar.sha1;commons-dbcp2-2.6.0-test-sources.jar;commons-dbcp2-2.6.0-test-sources.jar.asc;commons-dbcp2-2.6.0-test-sources.jar.md5;commons-dbcp2-2.6.0-test-sources.jar.sha1;commons-dbcp2-2.6.0-tests.jar;commons-dbcp2-2.6.0-tests.jar.asc;commons-dbcp2-2.6.0-tests.jar.md5;commons-dbcp2-2.6.0-tests.jar.sha1;commons-dbcp2-2.6.0.jar;commons-dbcp2-2.6.0.jar.asc;commons-dbcp2-2.6.0.jar.md5;commons-dbcp2-2.6.0.jar.sha1;commons-dbcp2-2.6.0.pom;commons-dbcp2-2.6.0.pom.asc;commons-dbcp2-2.6.0.pom.md5;commons-dbcp2-2.6.0.pom.sha1"

IFS=';' read -r -a array <<< "${ARTIFACTS}"

for element in "${array[@]}"
do
	ARTIFACT_NAME=$(echo $element | cut -d '/' -f7)
	echo $ARTIFACT_NAME
	URL="${BASE_NEXUS_URL}${element}"
	curl $URL -o $ARTIFACT_NAME
done
