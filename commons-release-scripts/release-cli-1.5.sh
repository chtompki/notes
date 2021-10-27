#!/bin/bash

svnmucc -U https://dist.apache.org/repos/dist \
          rm release/commons/cli/RELEASE-NOTES.txt \
          rm release/commons/cli/README.html \
          rm release/commons/cli/binaries/commons-cli-1.4-bin.tar.gz \
          rm release/commons/cli/binaries/commons-cli-1.4-bin.tar.gz.asc \
          rm release/commons/cli/binaries/commons-cli-1.4-bin.tar.gz.sha256 \
          rm release/commons/cli/binaries/commons-cli-1.4-bin.tar.gz.sha1 \
          rm release/commons/cli/binaries/commons-cli-1.4-bin.zip \
          rm release/commons/cli/binaries/commons-cli-1.4-bin.zip.asc \
          rm release/commons/cli/binaries/commons-cli-1.4-bin.zip.sha256 \
          rm release/commons/cli/binaries/commons-cli-1.4-bin.zip.sha1 \
          rm release/commons/cli/source/commons-cli-1.4-src.tar.gz \
          rm release/commons/cli/source/commons-cli-1.4-src.tar.gz.asc \
          rm release/commons/cli/source/commons-cli-1.4-src.tar.gz.sha256 \
          rm release/commons/cli/source/commons-cli-1.4-src.tar.gz.sha1 \
          rm release/commons/cli/source/commons-cli-1.4-src.zip \
          rm release/commons/cli/source/commons-cli-1.4-src.zip.asc \
          rm release/commons/cli/source/commons-cli-1.4-src.zip.sha256 \
          rm release/commons/cli/source/commons-cli-1.4-src.zip.sha1 \
          mv dev/commons/cli/1.5-RC1/RELEASE-NOTES.txt release/commons/cli/RELEASE-NOTES.txt \
          mv dev/commons/cli/1.5-RC1/README.html release/commons/cli/README.html \
          mv dev/commons/cli/1.5-RC1/binaries/commons-cli-1.5-bin.tar.gz release/commons/cli/binaries/commons-cli-1.5-bin.tar.gz \
          mv dev/commons/cli/1.5-RC1/binaries/commons-cli-1.5-bin.tar.gz.asc release/commons/cli/binaries/commons-cli-1.5-bin.tar.gz.asc \
          mv dev/commons/cli/1.5-RC1/binaries/commons-cli-1.5-bin.tar.gz.sha512 release/commons/cli/binaries/commons-cli-1.5-bin.tar.gz.sha512 \
          mv dev/commons/cli/1.5-RC1/binaries/commons-cli-1.5-bin.zip release/commons/cli/binaries/commons-cli-1.5-bin.zip \
          mv dev/commons/cli/1.5-RC1/binaries/commons-cli-1.5-bin.zip.asc release/commons/cli/binaries/commons-cli-1.5-bin.zip.asc \
          mv dev/commons/cli/1.5-RC1/binaries/commons-cli-1.5-bin.zip.sha512 release/commons/cli/binaries/commons-cli-1.5-bin.zip.sha512 \
          mv dev/commons/cli/1.5-RC1/source/commons-cli-1.5-src.tar.gz release/commons/cli/source/commons-cli-1.5-src.tar.gz \
          mv dev/commons/cli/1.5-RC1/source/commons-cli-1.5-src.tar.gz.asc release/commons/cli/source/commons-cli-1.5-src.tar.gz.asc \
          mv dev/commons/cli/1.5-RC1/source/commons-cli-1.5-src.tar.gz.sha512 release/commons/cli/source/commons-cli-1.5-src.tar.gz.sha512 \
          mv dev/commons/cli/1.5-RC1/source/commons-cli-1.5-src.zip release/commons/cli/source/commons-cli-1.5-src.zip \
          mv dev/commons/cli/1.5-RC1/source/commons-cli-1.5-src.zip.asc release/commons/cli/source/commons-cli-1.5-src.zip.asc \
          mv dev/commons/cli/1.5-RC1/source/commons-cli-1.5-src.zip.sha512 release/commons/cli/source/commons-cli-1.5-src.zip.sha512 \
          -m "Publish commons-cli 1.5 Release"
