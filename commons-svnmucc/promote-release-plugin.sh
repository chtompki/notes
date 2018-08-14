#!/bin/bash

svnmucc -U https://dist.apache.org/repos/dist \
          rm release/commons/commons-release-plugin/RELEASE-NOTES.txt \
          rm release/commons/commons-release-plugin/binaries/commons-release-plugin-1.2-bin.tar.gz \
          rm release/commons/commons-release-plugin/binaries/commons-release-plugin-1.2-bin.tar.gz.asc \
          rm release/commons/commons-release-plugin/binaries/commons-release-plugin-1.2-bin.tar.gz.sha256 \
          rm release/commons/commons-release-plugin/binaries/commons-release-plugin-1.2-bin.tar.gz.sha1 \
          rm release/commons/commons-release-plugin/binaries/commons-release-plugin-1.2-bin.zip \
          rm release/commons/commons-release-plugin/binaries/commons-release-plugin-1.2-bin.zip.asc \
          rm release/commons/commons-release-plugin/binaries/commons-release-plugin-1.2-bin.zip.sha256 \
          rm release/commons/commons-release-plugin/binaries/commons-release-plugin-1.2-bin.zip.sha1 \
          rm release/commons/commons-release-plugin/source/commons-release-plugin-1.2-src.tar.gz \
          rm release/commons/commons-release-plugin/source/commons-release-plugin-1.2-src.tar.gz.asc \
          rm release/commons/commons-release-plugin/source/commons-release-plugin-1.2-src.tar.gz.sha256 \
          rm release/commons/commons-release-plugin/source/commons-release-plugin-1.2-src.tar.gz.sha1 \
          rm release/commons/commons-release-plugin/source/commons-release-plugin-1.2-src.zip \
          rm release/commons/commons-release-plugin/source/commons-release-plugin-1.2-src.zip.asc \
          rm release/commons/commons-release-plugin/source/commons-release-plugin-1.2-src.zip.sha256 \
          rm release/commons/commons-release-plugin/source/commons-release-plugin-1.2-src.zip.sha1 \
          mv dev/commons/commons-release-plugin/1.3-RC1/RELEASE-NOTES.txt release/commons/commons-release-plugin/RELEASE-NOTES.txt \
          mv dev/commons/commons-release-plugin/1.3-RC1/binaries/commons-release-plugin-1.3-bin.tar.gz release/commons/commons-release-plugin/binaries/commons-release-plugin-1.3-bin.tar.gz \
          mv dev/commons/commons-release-plugin/1.3-RC1/binaries/commons-release-plugin-1.3-bin.tar.gz.asc release/commons/commons-release-plugin/binaries/commons-release-plugin-1.3-bin.tar.gz.asc \
          mv dev/commons/commons-release-plugin/1.3-RC1/binaries/commons-release-plugin-1.3-bin.tar.gz.sha256 release/commons/commons-release-plugin/binaries/commons-release-plugin-1.3-bin.tar.gz.sha256 \
          mv dev/commons/commons-release-plugin/1.3-RC1/binaries/commons-release-plugin-1.3-bin.tar.gz.sha1 release/commons/commons-release-plugin/binaries/commons-release-plugin-1.3-bin.tar.gz.sha1 \
          mv dev/commons/commons-release-plugin/1.3-RC1/binaries/commons-release-plugin-1.3-bin.zip release/commons/commons-release-plugin/binaries/commons-release-plugin-1.3-bin.zip \
          mv dev/commons/commons-release-plugin/1.3-RC1/binaries/commons-release-plugin-1.3-bin.zip.asc release/commons/commons-release-plugin/binaries/commons-release-plugin-1.3-bin.zip.asc \
          mv dev/commons/commons-release-plugin/1.3-RC1/binaries/commons-release-plugin-1.3-bin.zip.sha256 release/commons/commons-release-plugin/binaries/commons-release-plugin-1.3-bin.zip.sha256 \
          mv dev/commons/commons-release-plugin/1.3-RC1/binaries/commons-release-plugin-1.3-bin.zip.sha1 release/commons/commons-release-plugin/binaries/commons-release-plugin-1.3-bin.zip.sha1 \
          mv dev/commons/commons-release-plugin/1.3-RC1/source/commons-release-plugin-1.3-src.tar.gz release/commons/commons-release-plugin/source/commons-release-plugin-1.3-src.tar.gz \
          mv dev/commons/commons-release-plugin/1.3-RC1/source/commons-release-plugin-1.3-src.tar.gz.asc release/commons/commons-release-plugin/source/commons-release-plugin-1.3-src.tar.gz.asc \
          mv dev/commons/commons-release-plugin/1.3-RC1/source/commons-release-plugin-1.3-src.tar.gz.sha256 release/commons/commons-release-plugin/source/commons-release-plugin-1.3-src.tar.gz.sha256 \
          mv dev/commons/commons-release-plugin/1.3-RC1/source/commons-release-plugin-1.3-src.tar.gz.sha1 release/commons/commons-release-plugin/source/commons-release-plugin-1.3-src.tar.gz.sha1 \
          mv dev/commons/commons-release-plugin/1.3-RC1/source/commons-release-plugin-1.3-src.zip release/commons/commons-release-plugin/source/commons-release-plugin-1.3-src.zip \
          mv dev/commons/commons-release-plugin/1.3-RC1/source/commons-release-plugin-1.3-src.zip.asc release/commons/commons-release-plugin/source/commons-release-plugin-1.3-src.zip.asc \
          mv dev/commons/commons-release-plugin/1.3-RC1/source/commons-release-plugin-1.3-src.zip.sha256 release/commons/commons-release-plugin/source/commons-release-plugin-1.3-src.zip.sha256 \
          mv dev/commons/commons-release-plugin/1.3-RC1/source/commons-release-plugin-1.3-src.zip.sha1 release/commons/commons-release-plugin/source/commons-release-plugin-1.3-src.zip.sha1 \
          -m "Publish commons-release-plugin 1.3 Release"
