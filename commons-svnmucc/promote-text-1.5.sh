#!/bin/bash

svnmucc -U https://dist.apache.org/repos/dist \
          rm release/commons/text/RELEASE-NOTES.txt \
          rm release/commons/text/binaries/commons-text-1.4-bin.tar.gz \
          rm release/commons/text/binaries/commons-text-1.4-bin.tar.gz.asc \
          rm release/commons/text/binaries/commons-text-1.4-bin.tar.gz.sha256 \
          rm release/commons/text/binaries/commons-text-1.4-bin.tar.gz.sha1 \
          rm release/commons/text/binaries/commons-text-1.4-bin.zip \
          rm release/commons/text/binaries/commons-text-1.4-bin.zip.asc \
          rm release/commons/text/binaries/commons-text-1.4-bin.zip.sha256 \
          rm release/commons/text/binaries/commons-text-1.4-bin.zip.sha1 \
          rm release/commons/text/source/commons-text-1.4-src.tar.gz \
          rm release/commons/text/source/commons-text-1.4-src.tar.gz.asc \
          rm release/commons/text/source/commons-text-1.4-src.tar.gz.sha256 \
          rm release/commons/text/source/commons-text-1.4-src.tar.gz.sha1 \
          rm release/commons/text/source/commons-text-1.4-src.zip \
          rm release/commons/text/source/commons-text-1.4-src.zip.asc \
          rm release/commons/text/source/commons-text-1.4-src.zip.sha256 \
          rm release/commons/text/source/commons-text-1.4-src.zip.sha1 \
          rm dev/commons/text/1.5-RC3/site \
          rm dev/commons/text/1.5-RC3/HEADER.html \
          rm dev/commons/text/1.5-RC3/README.html \
          mv dev/commons/text/1.5-RC3/RELEASE-NOTES.txt release/commons/text/RELEASE-NOTES.txt \
          mv dev/commons/text/1.5-RC3/binaries/commons-text-1.5-bin.tar.gz release/commons/text/binaries/commons-text-1.5-bin.tar.gz \
          mv dev/commons/text/1.5-RC3/binaries/commons-text-1.5-bin.tar.gz.asc release/commons/text/binaries/commons-text-1.5-bin.tar.gz.asc \
          mv dev/commons/text/1.5-RC3/binaries/commons-text-1.5-bin.tar.gz.sha256 release/commons/text/binaries/commons-text-1.5-bin.tar.gz.sha256 \
          mv dev/commons/text/1.5-RC3/binaries/commons-text-1.5-bin.tar.gz.sha512 release/commons/text/binaries/commons-text-1.5-bin.tar.gz.sha512 \
          mv dev/commons/text/1.5-RC3/binaries/commons-text-1.5-bin.zip release/commons/text/binaries/commons-text-1.5-bin.zip \
          mv dev/commons/text/1.5-RC3/binaries/commons-text-1.5-bin.zip.asc release/commons/text/binaries/commons-text-1.5-bin.zip.asc \
          mv dev/commons/text/1.5-RC3/binaries/commons-text-1.5-bin.zip.sha256 release/commons/text/binaries/commons-text-1.5-bin.zip.sha256 \
          mv dev/commons/text/1.5-RC3/binaries/commons-text-1.5-bin.zip.sha512 release/commons/text/binaries/commons-text-1.5-bin.zip.sha512 \
          mv dev/commons/text/1.5-RC3/source/commons-text-1.5-src.tar.gz release/commons/text/source/commons-text-1.5-src.tar.gz \
          mv dev/commons/text/1.5-RC3/source/commons-text-1.5-src.tar.gz.asc release/commons/text/source/commons-text-1.5-src.tar.gz.asc \
          mv dev/commons/text/1.5-RC3/source/commons-text-1.5-src.tar.gz.sha256 release/commons/text/source/commons-text-1.5-src.tar.gz.sha256 \
          mv dev/commons/text/1.5-RC3/source/commons-text-1.5-src.tar.gz.sha512 release/commons/text/source/commons-text-1.5-src.tar.gz.sha512 \
          mv dev/commons/text/1.5-RC3/source/commons-text-1.5-src.zip release/commons/text/source/commons-text-1.5-src.zip \
          mv dev/commons/text/1.5-RC3/source/commons-text-1.5-src.zip.asc release/commons/text/source/commons-text-1.5-src.zip.asc \
          mv dev/commons/text/1.5-RC3/source/commons-text-1.5-src.zip.sha256 release/commons/text/source/commons-text-1.5-src.zip.sha256 \
          mv dev/commons/text/1.5-RC3/source/commons-text-1.5-src.zip.sha512 release/commons/text/source/commons-text-1.5-src.zip.sha512 \
          -m "Publish commons-lang 1.5 Release"
