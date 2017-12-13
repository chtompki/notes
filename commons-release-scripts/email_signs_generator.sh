#!/bin/bash

ARTIFACTS="commons-text-1.2-bin.tar.gz;commons-text-1.2-bin.zip;commons-text-1.2-src.tar.gz;commons-text-1.2-src.zip;commons-text-1.2-javadoc.jar;commons-text-1.2-sources.jar;commons-text-1.2-test-sources.jar;commons-text-1.2-tests.jar;commons-text-1.2.jar;commons-text-1.2.pom"

IFS=';' read -r -a array <<< "${ARTIFACTS}"

for element in "${array[@]}"
do
	ARTIFACT_SHA1=$(openssl sha1 $element | cut -d '=' -f2 | cut -d ' ' -f2)
	echo "   ${element}"
	echo "   (SHA1: ${ARTIFACT_SHA1})"
done

echo "END"
