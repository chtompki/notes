#!/bin/bash

ARTIFACTS="commons-collections4-4.2-bin.tar.gz;commons-collections4-4.2-bin.zip;commons-collections4-4.2-javadoc.jar;commons-collections4-4.2-sources.jar;commons-collections4-4.2-src.tar.gz;commons-collections4-4.2-src.zip;commons-collections4-4.2-test-sources.jar;commons-collections4-4.2-tests.jar;commons-collections4-4.2.jar;commons-collections4-4.2.pom"

IFS=';' read -r -a array <<< "${ARTIFACTS}"

for element in "${array[@]}"
do
	if [[ ${element} =~ ^.*tar.gz.*$ || ${element} =~ ^.*zip.*$ ]];
	then
		ARTIFACT_SHA256=$(openssl sha256 $element | cut -d '=' -f2 | cut -d ' ' -f2)
		FILE_SHA256=$(cut -d$'\r' -f1 $element.sha256)
		if test "${ARTIFACT_SHA256}" != "${FILE_SHA256}"
		then
			echo "$element failed sha256 check"
			echo "==${ARTIFACT_SHA256}=="
			echo "==${FILE_SHA256}=="
			exit 1;
		fi
		ARTIFACT_SHA1=$(openssl sha1 $element | cut -d '=' -f2 | cut -d ' ' -f2)
		FILE_SHA1=$(cut -d$'\r' -f1 $element.sha1)
		if test "${ARTIFACT_SHA1}" != "${FILE_SHA1}"
		then
			echo "$element failed sha1 check"
			echo ${ARTIFACT_SHA1}
			echo ${FILE_SHA1}
			exit 1;
		fi
	else
		ARTIFACT_MD5=$(md5 $element | cut -d '=' -f2 | cut -d ' ' -f2)
		FILE_MD5=$(cut -d$'\r' -f1 $element.md5)
		ARTIFACT_SHA1=$(openssl sha1 $element | cut -d '=' -f2 | cut -d ' ' -f2)
		FILE_SHA1=$(cut -d$'\r' -f1 $element.sha1)
		if test "${ARTIFACT_MD5}" != "${FILE_MD5}"
		then
			echo "$element failed md5 check"
			echo "==${ARTIFACT_MD5}=="
			echo "==${FILE_MD5}=="
			exit 1;
		fi
		
		
		gpg --verify $element.asc $element > /dev/null 2>&1
		if test "$?" != "0"
		then
			echo "$element failed gpg signature check"
			exit 1;
		fi
	fi
done

echo "SUCCESSFUL VALIDATION"
