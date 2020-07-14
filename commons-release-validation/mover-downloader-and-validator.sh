#!/bin/bash -x

BASEDIR="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
echo ${BASEDIR}
VALIDATION_DIR=${BASEDIR}/artifacts-for-validation-deletable-post-validation

BASE_NEXUS_URL="https://repository.apache.org/content/repositories/orgapachecommons-1506/org/apache/commons/commons-lang3/3.11/"

function clean_and_build_validation_dir() {
	mkdir -p ${VALIDATION_DIR}
}

function copy_in_checked_out_artifacts() {
	cp ${BASEDIR}/binaries/commons* ${VALIDATION_DIR}
	cp ${BASEDIR}/source/commons* ${VALIDATION_DIR}
}

function download_nexus_artifacts_to_validation_directory() {
	# Curls html page and does text modification to put artifacts in semicolon delimited list
	# ...(ugly but works, debug by removing pipes one at a time)
	echo "INFO: Downloading artifacts from nexus"
	NEXUS_ARTIFACTS=$(curl ${BASE_NEXUS_URL} \
	                       | grep "\">commons" \
	                       | cut -d '>' -f3 \
	                       | sed "s|</a|;|g" \
	                       | sed ':a;N;$!ba;s/\n/ /g' \
	                       | sed 's/ //g'
	                )

	IFS=';' read -r -a array <<< "${NEXUS_ARTIFACTS}"

	for element in "${array[@]}"
	do
		ARTIFACT_NAME=$(echo $element | cut -d '/' -f7)
		echo $ARTIFACT_NAME
		URL="${BASE_NEXUS_URL}${element}"
		curl $URL -o ${VALIDATION_DIR}/$ARTIFACT_NAME
	done
}

function validate_signatures() {
	echo "INFO: Validating Signatures in ${VALIDATION_DIR}"
	ARTIFACTS_FOR_VALIDATION=$(ls -Al ${VALIDATION_DIR} \
	                                  | awk -F':[0-9]* ' '/:/{print $2}' \
	                                  | sed ':a;N;$!ba;s/\n/;/g'
	                         )

	IFS=';' read -r -a array <<< "${ARTIFACTS_FOR_VALIDATION}"

	for element in "${array[@]}"
	do
		if [[ ${element} =~ ^.*asc$ || ${element} =~ ^.*sha512$ || ${element} =~ ^.*md5$ || ${element} =~ ^.*sha1$ ]];
		then
			continue
		fi
		if [[ ${element} =~ ^.*tar.gz.*$ || ${element} =~ ^.*zip.*$ ]];
		then
			ARTIFACT_SHA512=$(openssl sha512 ${VALIDATION_DIR}/$element | cut -d '=' -f2 | cut -d ' ' -f2)
			FILE_SHA512=$(cut -d$'\r' -f1 ${VALIDATION_DIR}/$element.sha512)
			if test "${ARTIFACT_SHA512}" != "${FILE_SHA512}"
			then
				echo "$element failed sha512 check"
				echo "==${ARTIFACT_SHA512}=="
				echo "==${FILE_SHA512}=="
				exit 1;
			fi
		else
			ARTIFACT_MD5=$(md5 ${VALIDATION_DIR}/$element | cut -d '=' -f2 | cut -d ' ' -f2)
			FILE_MD5=$(cut -d$'\r' -f1 ${VALIDATION_DIR}/$element.md5)
			ARTIFACT_SHA1=$(openssl sha1 ${VALIDATION_DIR}/$element | cut -d '=' -f2 | cut -d ' ' -f2)
			FILE_SHA1=$(cut -d$'\r' -f1 ${VALIDATION_DIR}/$element.sha1)
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
		fi
		gpg --verify $element.asc $element > /dev/null 2>&1
		if test "$?" != "0"
		then
			echo "$element failed gpg signature check"
			exit 1;
		fi
	done

	echo "SUCCESSFUL VALIDATION"
}


clean_and_build_validation_dir
copy_in_checked_out_artifacts
download_nexus_artifacts_to_validation_directory
validate_signatures

