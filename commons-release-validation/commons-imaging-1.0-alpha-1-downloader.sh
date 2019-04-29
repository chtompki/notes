#!/bin/bash

BASE_NEXUS_URL="https://repository.apache.org/content/repositories/orgapachecommons-1438/org/apache/commons/commons-imaging/1.0-alpha1/"

ARTIFACTS="commons-imaging-1.0-alpha1-javadoc.jar;commons-imaging-1.0-alpha1-javadoc.jar.asc;commons-imaging-1.0-alpha1-javadoc.jar.md5;commons-imaging-1.0-alpha1-javadoc.jar.sha1;commons-imaging-1.0-alpha1-sources.jar;commons-imaging-1.0-alpha1-sources.jar.asc;commons-imaging-1.0-alpha1-sources.jar.md5;commons-imaging-1.0-alpha1-sources.jar.sha1;commons-imaging-1.0-alpha1-test-sources.jar;commons-imaging-1.0-alpha1-test-sources.jar.asc;commons-imaging-1.0-alpha1-test-sources.jar.md5;commons-imaging-1.0-alpha1-test-sources.jar.sha1;commons-imaging-1.0-alpha1-tests.jar;commons-imaging-1.0-alpha1-tests.jar.asc;commons-imaging-1.0-alpha1-tests.jar.md5;commons-imaging-1.0-alpha1-tests.jar.sha1;commons-imaging-1.0-alpha1.jar;commons-imaging-1.0-alpha1.jar.asc;commons-imaging-1.0-alpha1.jar.md5;commons-imaging-1.0-alpha1.jar.sha1;commons-imaging-1.0-alpha1.pom;commons-imaging-1.0-alpha1.pom.asc;commons-imaging-1.0-alpha1.pom.md5;commons-imaging-1.0-alpha1.pom.sha1"

IFS=';' read -r -a array <<< "${ARTIFACTS}"

for element in "${array[@]}"
do
	ARTIFACT_NAME=$(echo $element | cut -d '/' -f7)
	echo $ARTIFACT_NAME
	URL="${BASE_NEXUS_URL}${element}"
	curl $URL -o $ARTIFACT_NAME
done
