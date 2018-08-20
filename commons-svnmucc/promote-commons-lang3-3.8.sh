#!/bin/bash

svnmucc -U https://dist.apache.org/repos/dist \
          rm release/commons/lang/RELEASE-NOTES.txt \
          rm release/commons/lang/binaries/commons-lang3-3.7-bin.tar.gz \
          rm release/commons/lang/binaries/commons-lang3-3.7-bin.tar.gz.asc \
          rm release/commons/lang/binaries/commons-lang3-3.7-bin.tar.gz.sha256 \
          rm release/commons/lang/binaries/commons-lang3-3.7-bin.tar.gz.sha1 \
          rm release/commons/lang/binaries/commons-lang3-3.7-bin.zip \
          rm release/commons/lang/binaries/commons-lang3-3.7-bin.zip.asc \
          rm release/commons/lang/binaries/commons-lang3-3.7-bin.zip.sha256 \
          rm release/commons/lang/binaries/commons-lang3-3.7-bin.zip.sha1 \
          rm release/commons/lang/source/commons-lang3-3.7-src.tar.gz \
          rm release/commons/lang/source/commons-lang3-3.7-src.tar.gz.asc \
          rm release/commons/lang/source/commons-lang3-3.7-src.tar.gz.sha256 \
          rm release/commons/lang/source/commons-lang3-3.7-src.tar.gz.sha1 \
          rm release/commons/lang/source/commons-lang3-3.7-src.zip \
          rm release/commons/lang/source/commons-lang3-3.7-src.zip.asc \
          rm release/commons/lang/source/commons-lang3-3.7-src.zip.sha256 \
          rm release/commons/lang/source/commons-lang3-3.7-src.zip.sha1 \
          rm dev/commons/lang/3.8-RC1/site \
          rm dev/commons/lang/3.8-RC1/HEADER.html \
          rm dev/commons/lang/3.8-RC1/README.html \
          mv dev/commons/lang/3.8-RC1/RELEASE-NOTES.txt release/commons/lang/RELEASE-NOTES.txt \
          mv dev/commons/lang/3.8-RC1/binaries/commons-lang3-3.8-bin.tar.gz release/commons/lang/binaries/commons-lang3-3.8-bin.tar.gz \
          mv dev/commons/lang/3.8-RC1/binaries/commons-lang3-3.8-bin.tar.gz.asc release/commons/lang/binaries/commons-lang3-3.8-bin.tar.gz.asc \
          mv dev/commons/lang/3.8-RC1/binaries/commons-lang3-3.8-bin.tar.gz.sha256 release/commons/lang/binaries/commons-lang3-3.8-bin.tar.gz.sha256 \
          mv dev/commons/lang/3.8-RC1/binaries/commons-lang3-3.8-bin.tar.gz.sha1 release/commons/lang/binaries/commons-lang3-3.8-bin.tar.gz.sha1 \
          mv dev/commons/lang/3.8-RC1/binaries/commons-lang3-3.8-bin.zip release/commons/lang/binaries/commons-lang3-3.8-bin.zip \
          mv dev/commons/lang/3.8-RC1/binaries/commons-lang3-3.8-bin.zip.asc release/commons/lang/binaries/commons-lang3-3.8-bin.zip.asc \
          mv dev/commons/lang/3.8-RC1/binaries/commons-lang3-3.8-bin.zip.sha256 release/commons/lang/binaries/commons-lang3-3.8-bin.zip.sha256 \
          mv dev/commons/lang/3.8-RC1/binaries/commons-lang3-3.8-bin.zip.sha1 release/commons/lang/binaries/commons-lang3-3.8-bin.zip.sha1 \
          mv dev/commons/lang/3.8-RC1/source/commons-lang3-3.8-src.tar.gz release/commons/lang/source/commons-lang3-3.8-src.tar.gz \
          mv dev/commons/lang/3.8-RC1/source/commons-lang3-3.8-src.tar.gz.asc release/commons/lang/source/commons-lang3-3.8-src.tar.gz.asc \
          mv dev/commons/lang/3.8-RC1/source/commons-lang3-3.8-src.tar.gz.sha256 release/commons/lang/source/commons-lang3-3.8-src.tar.gz.sha256 \
          mv dev/commons/lang/3.8-RC1/source/commons-lang3-3.8-src.tar.gz.sha1 release/commons/lang/source/commons-lang3-3.8-src.tar.gz.sha1 \
          mv dev/commons/lang/3.8-RC1/source/commons-lang3-3.8-src.zip release/commons/lang/source/commons-lang3-3.8-src.zip \
          mv dev/commons/lang/3.8-RC1/source/commons-lang3-3.8-src.zip.asc release/commons/lang/source/commons-lang3-3.8-src.zip.asc \
          mv dev/commons/lang/3.8-RC1/source/commons-lang3-3.8-src.zip.sha256 release/commons/lang/source/commons-lang3-3.8-src.zip.sha256 \
          mv dev/commons/lang/3.8-RC1/source/commons-lang3-3.8-src.zip.sha1 release/commons/lang/source/commons-lang3-3.8-src.zip.sha1 \
          -m "Publish commons-lang 3.8 Release"
