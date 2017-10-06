#!/bin/bash

STAGING_REPO="<Staging_repo_name>"

BASE_NEXUS_URL="https://repository.apache.org/content/repositories/${STAGING_REPO}"

BASE_DIST_URL="https://dist.apache.org/repos/dist/dev/commons/vfs/"

ARTIFACTS="/org/apache/commons/commons-vfs2-distribution/2.2/commons-vfs2-distribution-2.2-src.tar.gz;/org/apache/commons/commons-vfs2-distribution/2.2/commons-vfs2-distribution-2.2-bin.zip.asc;/org/apache/commons/commons-vfs2-distribution/2.2/commons-vfs2-distribution-2.2.pom;/org/apache/commons/commons-vfs2-distribution/2.2/commons-vfs2-distribution-2.2-src.zip.asc;/org/apache/commons/commons-vfs2-distribution/2.2/commons-vfs2-distribution-2.2-bin.zip;/org/apache/commons/commons-vfs2-distribution/2.2/commons-vfs2-distribution-2.2-bin.tar.gz;/org/apache/commons/commons-vfs2-distribution/2.2/commons-vfs2-distribution-2.2.pom.asc;/org/apache/commons/commons-vfs2-distribution/2.2/commons-vfs2-distribution-2.2-src.tar.gz.asc;/org/apache/commons/commons-vfs2-distribution/2.2/commons-vfs2-distribution-2.2-src.zip;/org/apache/commons/commons-vfs2-distribution/2.2/commons-vfs2-distribution-2.2-bin.tar.gz.asc;/org/apache/commons/commons-vfs2/2.2/commons-vfs2-2.2.jar.asc;/org/apache/commons/commons-vfs2/2.2/commons-vfs2-2.2-test-sources.jar;/org/apache/commons/commons-vfs2/2.2/commons-vfs2-2.2-tests.jar.asc;/org/apache/commons/commons-vfs2/2.2/commons-vfs2-2.2-javadoc.jar.asc;/org/apache/commons/commons-vfs2/2.2/commons-vfs2-2.2.pom.asc;/org/apache/commons/commons-vfs2/2.2/commons-vfs2-2.2.pom;/org/apache/commons/commons-vfs2/2.2/commons-vfs2-2.2-test-sources.jar.asc;/org/apache/commons/commons-vfs2/2.2/commons-vfs2-2.2-sources.jar.asc;/org/apache/commons/commons-vfs2/2.2/commons-vfs2-2.2.jar;/org/apache/commons/commons-vfs2/2.2/commons-vfs2-2.2-sources.jar;/org/apache/commons/commons-vfs2/2.2/commons-vfs2-2.2-javadoc.jar;/org/apache/commons/commons-vfs2/2.2/commons-vfs2-2.2-tests.jar;/org/apache/commons/commons-vfs2-project/2.2/commons-vfs2-project-2.2-site.xml;/org/apache/commons/commons-vfs2-project/2.2/commons-vfs2-project-2.2.pom;/org/apache/commons/commons-vfs2-project/2.2/commons-vfs2-project-2.2.pom.asc;/org/apache/commons/commons-vfs2-project/2.2/commons-vfs2-project-2.2-site.xml.asc;/org/apache/commons/commons-vfs2-examples/2.2/commons-vfs2-examples-2.2-sources.jar.asc;/org/apache/commons/commons-vfs2-examples/2.2/commons-vfs2-examples-2.2-sources.jar;/org/apache/commons/commons-vfs2-examples/2.2/commons-vfs2-examples-2.2-javadoc.jar.asc;/org/apache/commons/commons-vfs2-examples/2.2/commons-vfs2-examples-2.2-javadoc.jar;/org/apache/commons/commons-vfs2-examples/2.2/commons-vfs2-examples-2.2.pom;/org/apache/commons/commons-vfs2-examples/2.2/commons-vfs2-examples-2.2.jar;/org/apache/commons/commons-vfs2-examples/2.2/commons-vfs2-examples-2.2.jar.asc;/org/apache/commons/commons-vfs2-examples/2.2/commons-vfs2-examples-2.2.pom.asc"

IFS=';' read -r -a array <<< "${ARTIFACTS}"

for element in "${array[@]}"
do
	ARTIFACT_NAME=$(echo $element | cut -d '/' -f7)
	echo $ARTIFACT_NAME
	URL="${BASE_NEXUS_URL}${element}"
	curl $URL -o $ARTIFACT_NAME
	if [[ $element == *".asc"* ]]; then
		echo "Has .asc extension"
	else
		MD5_URL="${URL}.md5"
		MD5_ARTIFACT_NAME="${ARTIFACT_NAME}.md5"
		SHA1_URL="${URL}.sha1"
		SHA1_ARTIFACT_NAME="${ARTIFACT_NAME}.sha1"
		curl $MD5_URL -o $MD5_ARTIFACT_NAME
		curl $SHA1_URL -o $SHA1_ARTIFACT_NAME
	fi
done
