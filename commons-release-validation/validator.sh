#!/bin/bash

ARTIFACTS="commons-vfs2-2.2-javadoc.jar;commons-vfs2-2.2-sources.jar;commons-vfs2-2.2-test-sources.jar;commons-vfs2-2.2-tests.jar;commons-vfs2-2.2.jar;commons-vfs2-2.2.pom;commons-vfs2-distribution-2.2-bin.tar.gz;commons-vfs2-distribution-2.2-bin.zip;commons-vfs2-distribution-2.2-src.tar.gz;commons-vfs2-distribution-2.2-src.zip;commons-vfs2-distribution-2.2.pom;commons-vfs2-examples-2.2-javadoc.jar;commons-vfs2-examples-2.2-sources.jar;commons-vfs2-examples-2.2.jar;commons-vfs2-examples-2.2.pom;commons-vfs2-project-2.2-site.xml;commons-vfs2-project-2.2.pom"

IFS=';' read -r -a array <<< "${ARTIFACTS}"

for element in "${array[@]}"
do
	ARTIFACT_MD5=$(md5 $element | cut -d '=' -f2 | cut -d ' ' -f2)
	FILE_MD5=$(cat $element.md5)
	ARTIFACT_SHA1=$(openssl sha1 $element | cut -d '=' -f2 | cut -d ' ' -f2)
	FILE_SHA1=$(cat $element.sha1)
	if test "${ARTIFACT_MD5}" != "${FILE_MD5}"
	then
		echo "$element failed md5 check"
		echo ${ARTIFACT_MD5}
		echo ${FILE_MD5}
		exit 1;
	fi
	if test "${ARTIFACT_SHA1}" != "${FILE_SHA1}"
	then
		echo "$element failed sha1 check"
		exit 1;
	fi
	gpg --verify $element.asc $element > /dev/null 2>&1
	if test "$?" != "0"
	then
		echo "$element failed gpg signature check"
		exit 1;
	fi
done

echo "SUCCESSFUL VALIDATION"
