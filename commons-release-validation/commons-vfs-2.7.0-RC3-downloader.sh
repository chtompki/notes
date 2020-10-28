#!/bin/bash
BASE_NEXUS_URL="https://repository.apache.org/content/repositories/orgapachecommons-1536/org/apache/commons/commons-vfs2-distribution/2.7.0/"

ARTIFACTS="commons-vfs2-distribution-2.7.0.pom;commons-vfs2-distribution-2.7.0.pom.asc;commons-vfs2-distribution-2.7.0.pom.md5;commons-vfs2-distribution-2.7.0.pom.sha1"

IFS=';' read -r -a array <<< "${ARTIFACTS}"

for element in "${array[@]}"
do
	ARTIFACT_NAME=$(echo $element | cut -d '/' -f7)
	echo $ARTIFACT_NAME
	URL="${BASE_NEXUS_URL}${element}"
	curl $URL -o $ARTIFACT_NAME
done

BASE_NEXUS_URL="https://repository.apache.org/content/repositories/orgapachecommons-1536/org/apache/commons/commons-vfs2-examples/2.7.0/"

ARTIFACTS="commons-vfs2-examples-2.7.0-javadoc.jar;commons-vfs2-examples-2.7.0-javadoc.jar.asc;commons-vfs2-examples-2.7.0-javadoc.jar.md5;commons-vfs2-examples-2.7.0-javadoc.jar.sha1;commons-vfs2-examples-2.7.0-sources.jar;commons-vfs2-examples-2.7.0-sources.jar.asc;commons-vfs2-examples-2.7.0-sources.jar.md5;commons-vfs2-examples-2.7.0-sources.jar.sha1;commons-vfs2-examples-2.7.0.jar;commons-vfs2-examples-2.7.0.jar.asc;commons-vfs2-examples-2.7.0.jar.md5;commons-vfs2-examples-2.7.0.jar.sha1;commons-vfs2-examples-2.7.0.pom;commons-vfs2-examples-2.7.0.pom.asc;commons-vfs2-examples-2.7.0.pom.md5;commons-vfs2-examples-2.7.0.pom.sha1"

IFS=';' read -r -a array <<< "${ARTIFACTS}"

for element in "${array[@]}"
do
	ARTIFACT_NAME=$(echo $element | cut -d '/' -f7)
	echo $ARTIFACT_NAME
	URL="${BASE_NEXUS_URL}${element}"
	curl $URL -o $ARTIFACT_NAME
done

BASE_NEXUS_URL="https://repository.apache.org/content/repositories/orgapachecommons-1536/org/apache/commons/commons-vfs2-jackrabbit1/2.7.0/"

ARTIFACTS="commons-vfs2-jackrabbit1-2.7.0-javadoc.jar;commons-vfs2-jackrabbit1-2.7.0-javadoc.jar.asc;commons-vfs2-jackrabbit1-2.7.0-javadoc.jar.md5;commons-vfs2-jackrabbit1-2.7.0-javadoc.jar.sha1;commons-vfs2-jackrabbit1-2.7.0-sources.jar;commons-vfs2-jackrabbit1-2.7.0-sources.jar.asc;commons-vfs2-jackrabbit1-2.7.0-sources.jar.md5;commons-vfs2-jackrabbit1-2.7.0-sources.jar.sha1;commons-vfs2-jackrabbit1-2.7.0-test-sources.jar;commons-vfs2-jackrabbit1-2.7.0-test-sources.jar.asc;commons-vfs2-jackrabbit1-2.7.0-test-sources.jar.md5;commons-vfs2-jackrabbit1-2.7.0-test-sources.jar.sha1;commons-vfs2-jackrabbit1-2.7.0-tests.jar;commons-vfs2-jackrabbit1-2.7.0-tests.jar.asc;commons-vfs2-jackrabbit1-2.7.0-tests.jar.md5;commons-vfs2-jackrabbit1-2.7.0-tests.jar.sha1;commons-vfs2-jackrabbit1-2.7.0.jar;commons-vfs2-jackrabbit1-2.7.0.jar.asc;commons-vfs2-jackrabbit1-2.7.0.jar.md5;commons-vfs2-jackrabbit1-2.7.0.jar.sha1;commons-vfs2-jackrabbit1-2.7.0.pom;commons-vfs2-jackrabbit1-2.7.0.pom.asc;commons-vfs2-jackrabbit1-2.7.0.pom.md5;commons-vfs2-jackrabbit1-2.7.0.pom.sha1"

IFS=';' read -r -a array <<< "${ARTIFACTS}"

for element in "${array[@]}"
do
	ARTIFACT_NAME=$(echo $element | cut -d '/' -f7)
	echo $ARTIFACT_NAME
	URL="${BASE_NEXUS_URL}${element}"
	curl $URL -o $ARTIFACT_NAME
done

BASE_NEXUS_URL="https://repository.apache.org/content/repositories/orgapachecommons-1536/org/apache/commons/commons-vfs2-jackrabbit2/2.7.0/"

ARTIFACTS="commons-vfs2-jackrabbit2-2.7.0-javadoc.jar;commons-vfs2-jackrabbit2-2.7.0-javadoc.jar.asc;commons-vfs2-jackrabbit2-2.7.0-javadoc.jar.md5;commons-vfs2-jackrabbit2-2.7.0-javadoc.jar.sha1;commons-vfs2-jackrabbit2-2.7.0-sources.jar;commons-vfs2-jackrabbit2-2.7.0-sources.jar.asc;commons-vfs2-jackrabbit2-2.7.0-sources.jar.md5;commons-vfs2-jackrabbit2-2.7.0-sources.jar.sha1;commons-vfs2-jackrabbit2-2.7.0-test-sources.jar;commons-vfs2-jackrabbit2-2.7.0-test-sources.jar.asc;commons-vfs2-jackrabbit2-2.7.0-test-sources.jar.md5;commons-vfs2-jackrabbit2-2.7.0-test-sources.jar.sha1;commons-vfs2-jackrabbit2-2.7.0-tests.jar;commons-vfs2-jackrabbit2-2.7.0-tests.jar.asc;commons-vfs2-jackrabbit2-2.7.0-tests.jar.md5;commons-vfs2-jackrabbit2-2.7.0-tests.jar.sha1;commons-vfs2-jackrabbit2-2.7.0.jar;commons-vfs2-jackrabbit2-2.7.0.jar.asc;commons-vfs2-jackrabbit2-2.7.0.jar.md5;commons-vfs2-jackrabbit2-2.7.0.jar.sha1;commons-vfs2-jackrabbit2-2.7.0.pom;commons-vfs2-jackrabbit2-2.7.0.pom.asc;commons-vfs2-jackrabbit2-2.7.0.pom.md5;commons-vfs2-jackrabbit2-2.7.0.pom.sha1"

IFS=';' read -r -a array <<< "${ARTIFACTS}"

for element in "${array[@]}"
do
	ARTIFACT_NAME=$(echo $element | cut -d '/' -f7)
	echo $ARTIFACT_NAME
	URL="${BASE_NEXUS_URL}${element}"
	curl $URL -o $ARTIFACT_NAME
done

BASE_NEXUS_URL="https://repository.apache.org/content/repositories/orgapachecommons-1536/org/apache/commons/commons-vfs2-project/2.7.0/"

ARTIFACTS="commons-vfs2-project-2.7.0-site.xml;commons-vfs2-project-2.7.0-site.xml.asc;commons-vfs2-project-2.7.0-site.xml.md5;commons-vfs2-project-2.7.0-site.xml.sha1;commons-vfs2-project-2.7.0.pom;commons-vfs2-project-2.7.0.pom.asc;commons-vfs2-project-2.7.0.pom.md5;commons-vfs2-project-2.7.0.pom.sha1"

IFS=';' read -r -a array <<< "${ARTIFACTS}"

for element in "${array[@]}"
do
	ARTIFACT_NAME=$(echo $element | cut -d '/' -f7)
	echo $ARTIFACT_NAME
	URL="${BASE_NEXUS_URL}${element}"
	curl $URL -o $ARTIFACT_NAME
done

BASE_NEXUS_URL="https://repository.apache.org/content/repositories/orgapachecommons-1536/org/apache/commons/commons-vfs2/2.7.0/"

ARTIFACTS="commons-vfs2-2.7.0-javadoc.jar;commons-vfs2-2.7.0-javadoc.jar.asc;commons-vfs2-2.7.0-javadoc.jar.md5;commons-vfs2-2.7.0-javadoc.jar.sha1;commons-vfs2-2.7.0-sources.jar;commons-vfs2-2.7.0-sources.jar.asc;commons-vfs2-2.7.0-sources.jar.md5;commons-vfs2-2.7.0-sources.jar.sha1;commons-vfs2-2.7.0-test-sources.jar;commons-vfs2-2.7.0-test-sources.jar.asc;commons-vfs2-2.7.0-test-sources.jar.md5;commons-vfs2-2.7.0-test-sources.jar.sha1;commons-vfs2-2.7.0-tests.jar;commons-vfs2-2.7.0-tests.jar.asc;commons-vfs2-2.7.0-tests.jar.md5;commons-vfs2-2.7.0-tests.jar.sha1;commons-vfs2-2.7.0.jar;commons-vfs2-2.7.0.jar.asc;commons-vfs2-2.7.0.jar.md5;commons-vfs2-2.7.0.jar.sha1;commons-vfs2-2.7.0.pom;commons-vfs2-2.7.0.pom.asc;commons-vfs2-2.7.0.pom.md5;commons-vfs2-2.7.0.pom.sha1"

IFS=';' read -r -a array <<< "${ARTIFACTS}"

for element in "${array[@]}"
do
	ARTIFACT_NAME=$(echo $element | cut -d '/' -f7)
	echo $ARTIFACT_NAME
	URL="${BASE_NEXUS_URL}${element}"
	curl $URL -o $ARTIFACT_NAME
done

