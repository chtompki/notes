#!/bin/bash

svnmucc -U https://dist.apache.org/repos/dist \
          rm release/commons/commons-build-plugin/RELEASE-NOTES.txt \
          rm release/commons/commons-build-plugin/binaries/commons-build-plugin-1.8-tests.jar \
          rm release/commons/commons-build-plugin/binaries/commons-build-plugin-1.8-tests.jar.asc \
          rm release/commons/commons-build-plugin/binaries/commons-build-plugin-1.8-tests.jar.sha1 \
          rm release/commons/commons-build-plugin/binaries/commons-build-plugin-1.8.jar \
          rm release/commons/commons-build-plugin/binaries/commons-build-plugin-1.8.jar.asc \
          rm release/commons/commons-build-plugin/binaries/commons-build-plugin-1.8.jar.sha1 \
          rm release/commons/commons-build-plugin/binaries/commons-build-plugin-1.8.pom \
          rm release/commons/commons-build-plugin/binaries/commons-build-plugin-1.8.pom.asc \
          rm release/commons/commons-build-plugin/binaries/commons-build-plugin-1.8.pom.sha1 \
          rm release/commons/commons-build-plugin/source/commons-build-plugin-1.8-javadoc.jar \
          rm release/commons/commons-build-plugin/source/commons-build-plugin-1.8-javadoc.jar.asc \
          rm release/commons/commons-build-plugin/source/commons-build-plugin-1.8-javadoc.jar.sha1 \
          rm release/commons/commons-build-plugin/source/commons-build-plugin-1.8-sources.jar \
          rm release/commons/commons-build-plugin/source/commons-build-plugin-1.8-sources.jar.asc \
          rm release/commons/commons-build-plugin/source/commons-build-plugin-1.8-sources.jar.sha1 \
          rm release/commons/commons-build-plugin/source/commons-build-plugin-1.8-src.tar.gz \
          rm release/commons/commons-build-plugin/source/commons-build-plugin-1.8-src.tar.gz.asc \
          rm release/commons/commons-build-plugin/source/commons-build-plugin-1.8-src.tar.gz.sha256 \
          rm release/commons/commons-build-plugin/source/commons-build-plugin-1.8-src.tar.gz.sha1 \
          rm release/commons/commons-build-plugin/source/commons-build-plugin-1.8-src.zip \
          rm release/commons/commons-build-plugin/source/commons-build-plugin-1.8-src.zip.asc \
          rm release/commons/commons-build-plugin/source/commons-build-plugin-1.8-src.zip.sha256 \
          rm release/commons/commons-build-plugin/source/commons-build-plugin-1.8-src.zip.sha1 \
          rm release/commons/commons-build-plugin/source/commons-build-plugin-1.8-test-sources.jar \
          rm release/commons/commons-build-plugin/source/commons-build-plugin-1.8-test-sources.jar.asc \
          rm release/commons/commons-build-plugin/source/commons-build-plugin-1.8-test-sources.jar.sha1 \
          mv dev/commons/commons-build-plugin/1.9-RC1/RELEASE-NOTES.txt release/commons/commons-build-plugin/RELEASE-NOTES.txt \
          mv dev/commons/commons-build-plugin/1.9-RC1/source/commons-build-plugin-1.9-src.tar.gz release/commons/commons-build-plugin/source/commons-build-plugin-1.9-src.tar.gz \
          mv dev/commons/commons-build-plugin/1.9-RC1/source/commons-build-plugin-1.9-src.tar.gz.asc release/commons/commons-build-plugin/source/commons-build-plugin-1.9-src.tar.gz.asc \
          mv dev/commons/commons-build-plugin/1.9-RC1/source/commons-build-plugin-1.9-src.tar.gz.sha256 release/commons/commons-build-plugin/source/commons-build-plugin-1.9-src.tar.gz.sha256 \
          mv dev/commons/commons-build-plugin/1.9-RC1/source/commons-build-plugin-1.9-src.tar.gz.sha1 release/commons/commons-build-plugin/source/commons-build-plugin-1.9-src.tar.gz.sha1 \
          mv dev/commons/commons-build-plugin/1.9-RC1/source/commons-build-plugin-1.9-src.zip release/commons/commons-build-plugin/source/commons-build-plugin-1.9-src.zip \
          mv dev/commons/commons-build-plugin/1.9-RC1/source/commons-build-plugin-1.9-src.zip.asc release/commons/commons-build-plugin/source/commons-build-plugin-1.9-src.zip.asc \
          mv dev/commons/commons-build-plugin/1.9-RC1/source/commons-build-plugin-1.9-src.zip.sha256 release/commons/commons-build-plugin/source/commons-build-plugin-1.9-src.zip.sha256 \
          mv dev/commons/commons-build-plugin/1.9-RC1/source/commons-build-plugin-1.9-src.zip.sha1 release/commons/commons-build-plugin/source/commons-build-plugin-1.9-src.zip.sha1 \
          -m "Publish commons-build-plugin 1.9 Release"
