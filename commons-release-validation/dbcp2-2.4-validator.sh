#!/bin/bash

ARTIFACTS="commons-dbcp2-2.4.0-bin.tar.gz;commons-dbcp2-2.4.0-bin.zip;commons-dbcp2-2.4.0-javadoc.jar;commons-dbcp2-2.4.0-sources.jar;commons-dbcp2-2.4.0-src.tar.gz;commons-dbcp2-2.4.0-src.zip;commons-dbcp2-2.4.0-test-sources.jar;commons-dbcp2-2.4.0-tests.jar;commons-dbcp2-2.4.0.jar;commons-dbcp2-2.4.0.pom"

IFS=';' read -r -a array <<< "${ARTIFACTS}"

for element in "${array[@]}"
do
	ARTIFACT_MD5=$(md5 $element | cut -d '=' -f2 | cut -d ' ' -f2)
	FILE_MD5=$(cut -d$'\r' -f1 $element.md5)
	ARTIFACT_SHA1=$(openssl sha1 $element | cut -d '=' -f2 | cut -d ' ' -f2)
	ARTIFACT_SHA256=$(openssl sha256 $element | cut -d '=' -f2 | cut -d ' ' -f2)
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
		echo ${ARTIFACT_SHA1}
		echo ${FILE_SHA1}
		exit 1;
	fi
	if [[ ${element} =~ ^.*tar.gz.*$ ]];
	then
		FILE_SHA256=$(cut -d$'\r' -f1 $element.sha256)
		if test "${ARTIFACT_SHA256}" != "${FILE_SHA256}"
		then
			echo "$element failed sha256 check"
			echo ${ARTIFACT_SHA256}
			echo ${FILE_SHA256}
			exit 1;
		fi
	fi
	if [[ ${element} =~ ^.*zip.*$ ]];
	then
		FILE_SHA256=$(cut -d$'\r' -f1 $element.sha256)
		if test "${ARTIFACT_SHA256}" != "${FILE_SHA256}"
		then
			echo "$element failed sha256 check"
			echo ${ARTIFACT_SHA256}
			echo ${FILE_SHA256}
			exit 1;
		fi
	fi
	gpg --verify $element.asc $element > /dev/null 2>&1
	if test "$?" != "0"
	then
		echo "$element failed gpg signature check"
		exit 1;
	fi
done

echo "SUCCESSFUL VALIDATION"
