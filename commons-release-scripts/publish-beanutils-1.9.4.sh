#!/bin/bash

svnmucc -U https://dist.apache.org/repos/dist \
          rm release/commons/beanutils/RELEASE-NOTES.txt \
          rm release/commons/beanutils/README.html \
          rm release/commons/beanutils/HEADER.html \
          rm release/commons/beanutils/binaries/commons-beanutils-1.9.3-bin.tar.gz \
          rm release/commons/beanutils/binaries/commons-beanutils-1.9.3-bin.tar.gz.asc \
          rm release/commons/beanutils/binaries/commons-beanutils-1.9.3-bin.tar.gz.sha1 \
          rm release/commons/beanutils/binaries/commons-beanutils-1.9.3-bin.tar.gz.sha256 \
          rm release/commons/beanutils/binaries/commons-beanutils-1.9.3-bin.zip \
          rm release/commons/beanutils/binaries/commons-beanutils-1.9.3-bin.zip.asc \
          rm release/commons/beanutils/binaries/commons-beanutils-1.9.3-bin.zip.sha1 \
          rm release/commons/beanutils/binaries/commons-beanutils-1.9.3-bin.zip.sha256 \
          rm release/commons/beanutils/source/commons-beanutils-1.9.3-src.tar.gz \
          rm release/commons/beanutils/source/commons-beanutils-1.9.3-src.tar.gz.asc \
          rm release/commons/beanutils/source/commons-beanutils-1.9.3-src.tar.gz.sha1 \
          rm release/commons/beanutils/source/commons-beanutils-1.9.3-src.tar.gz.sha256 \
          rm release/commons/beanutils/source/commons-beanutils-1.9.3-src.zip \
          rm release/commons/beanutils/source/commons-beanutils-1.9.3-src.zip.asc \
          rm release/commons/beanutils/source/commons-beanutils-1.9.3-src.zip.sha1 \
          rm release/commons/beanutils/source/commons-beanutils-1.9.3-src.zip.sha256 \
          mv dev/commons/beanutils/1.9.4-RC2/RELEASE-NOTES.txt release/commons/beanutils/RELEASE-NOTES.txt \
          mv dev/commons/beanutils/1.9.4-RC2/README.html release/commons/beanutils/README.html \
          mv dev/commons/beanutils/1.9.4-RC2/HEADER.html release/commons/beanutils/HEADER.html \
          mv dev/commons/beanutils/1.9.4-RC2/binaries/commons-beanutils-1.9.4-bin.tar.gz release/commons/beanutils/binaries/commons-beanutils-1.9.4-bin.tar.gz \
          mv dev/commons/beanutils/1.9.4-RC2/binaries/commons-beanutils-1.9.4-bin.tar.gz.asc release/commons/beanutils/binaries/commons-beanutils-1.9.4-bin.tar.gz.asc \
          mv dev/commons/beanutils/1.9.4-RC2/binaries/commons-beanutils-1.9.4-bin.tar.gz.sha256 release/commons/beanutils/binaries/commons-beanutils-1.9.4-bin.tar.gz.sha256 \
          mv dev/commons/beanutils/1.9.4-RC2/binaries/commons-beanutils-1.9.4-bin.zip release/commons/beanutils/binaries/commons-beanutils-1.9.4-bin.zip \
          mv dev/commons/beanutils/1.9.4-RC2/binaries/commons-beanutils-1.9.4-bin.zip.asc release/commons/beanutils/binaries/commons-beanutils-1.9.4-bin.zip.asc \
          mv dev/commons/beanutils/1.9.4-RC2/binaries/commons-beanutils-1.9.4-bin.zip.sha256 release/commons/beanutils/binaries/commons-beanutils-1.9.4-bin.zip.sha256 \
          mv dev/commons/beanutils/1.9.4-RC2/source/commons-beanutils-1.9.4-src.tar.gz release/commons/beanutils/source/commons-beanutils-1.9.4-src.tar.gz \
          mv dev/commons/beanutils/1.9.4-RC2/source/commons-beanutils-1.9.4-src.tar.gz.asc release/commons/beanutils/source/commons-beanutils-1.9.4-src.tar.gz.asc \
          mv dev/commons/beanutils/1.9.4-RC2/source/commons-beanutils-1.9.4-src.tar.gz.sha256 release/commons/beanutils/source/commons-beanutils-1.9.4-src.tar.gz.sha256 \
          mv dev/commons/beanutils/1.9.4-RC2/source/commons-beanutils-1.9.4-src.zip release/commons/beanutils/source/commons-beanutils-1.9.4-src.zip \
          mv dev/commons/beanutils/1.9.4-RC2/source/commons-beanutils-1.9.4-src.zip.asc release/commons/beanutils/source/commons-beanutils-1.9.4-src.zip.asc \
          mv dev/commons/beanutils/1.9.4-RC2/source/commons-beanutils-1.9.4-src.zip.sha256 release/commons/beanutils/source/commons-lang3-1.9.4-src.zip.sha256 \
          -m "Publish commons-beanutils 1.9.4 Release"
