#!/bin/bash

ARTIFACTS="commons-text-1.7-bin.tar.gz;commons-text-1.7-bin.zip;commons-text-1.7-javadoc.jar;commons-text-1.7-sources.jar;commons-text-1.7-src.tar.gz;commons-text-1.7-src.zip;commons-text-1.7-test-sources.jar;commons-text-1.7-tests.jar;commons-text-1.7.jar;commons-text-1.7.pom"

IFS=';' read -r -a array <<< "${ARTIFACTS}"

for element in "${array[@]}"
do
	if [[ ${element} =~ ^.*tar.gz.*$ || ${element} =~ ^.*zip.*$ ]];
	then
		ARTIFACT_SHA512=$(openssl sha512 $element | cut -d '=' -f2 | cut -d ' ' -f2)
		FILE_SHA512=$(cut -d$'\r' -f1 $element.sha512)
		if test "${ARTIFACT_SHA512}" != "${FILE_SHA512}"
		then
			echo "$element failed sha512 check"
			echo "==${ARTIFACT_SHA512}=="
			echo "==${FILE_SHA512}=="
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
		if test "${ARTIFACT_SHA1}" != "${FILE_SHA1}"
		then
			echo "$element failed sha1 check"
			echo "==${ARTIFACT_SHA1}=="
			echo "==${FILE_SHA1}=="
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
