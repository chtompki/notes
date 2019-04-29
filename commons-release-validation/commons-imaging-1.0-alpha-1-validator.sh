#!/bin/bash

ARTIFACTS="commons-imaging-1.0-alpha1-bin.tar.gz;commons-imaging-1.0-alpha1-bin.zip;commons-imaging-1.0-alpha1-javadoc.jar;commons-imaging-1.0-alpha1-sources.jar;commons-imaging-1.0-alpha1-src.tar.gz;commons-imaging-1.0-alpha1-src.zip;commons-imaging-1.0-alpha1-test-sources.jar;commons-imaging-1.0-alpha1-tests.jar;commons-imaging-1.0-alpha1.jar;commons-imaging-1.0-alpha1.pom"

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
