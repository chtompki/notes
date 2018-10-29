#!/bin/bash

svnmucc -U https://dist.apache.org/repos/dist \
          rm release/commons/configuration/RELEASE-NOTES.txt \
          rm release/commons/configuration/binaries/commons-configuration2-2.3-bin.tar.gz \
          rm release/commons/configuration/binaries/commons-configuration2-2.3-bin.tar.gz.asc \
          rm release/commons/configuration/binaries/commons-configuration2-2.3-bin.tar.gz.sha256 \
          rm release/commons/configuration/binaries/commons-configuration2-2.3-bin.tar.gz.sha1 \
          rm release/commons/configuration/binaries/commons-configuration2-2.3-bin.zip \
          rm release/commons/configuration/binaries/commons-configuration2-2.3-bin.zip.asc \
          rm release/commons/configuration/binaries/commons-configuration2-2.3-bin.zip.sha256 \
          rm release/commons/configuration/binaries/commons-configuration2-2.3-bin.zip.sha1 \
          rm release/commons/configuration/source/commons-configuration2-2.3-src.tar.gz \
          rm release/commons/configuration/source/commons-configuration2-2.3-src.tar.gz.asc \
          rm release/commons/configuration/source/commons-configuration2-2.3-src.tar.gz.sha256 \
          rm release/commons/configuration/source/commons-configuration2-2.3-src.tar.gz.sha1 \
          rm release/commons/configuration/source/commons-configuration2-2.3-src.zip \
          rm release/commons/configuration/source/commons-configuration2-2.3-src.zip.asc \
          rm release/commons/configuration/source/commons-configuration2-2.3-src.zip.sha256 \
          rm release/commons/configuration/source/commons-configuration2-2.3-src.zip.sha1 \
          mv dev/commons/configuration/2.4-RC2/RELEASE-NOTES.txt release/commons/configuration/RELEASE-NOTES.txt \
          mv dev/commons/configuration/2.4-RC2/binaries/commons-configuration2-2.4-bin.tar.gz release/commons/configuration/binaries/commons-configuration2-2.4-bin.tar.gz \
          mv dev/commons/configuration/2.4-RC2/binaries/commons-configuration2-2.4-bin.tar.gz.asc release/commons/configuration/binaries/commons-configuration2-2.4-bin.tar.gz.asc \
          mv dev/commons/configuration/2.4-RC2/binaries/commons-configuration2-2.4-bin.tar.gz.sha256 release/commons/configuration/binaries/commons-configuration2-2.4-bin.tar.gz.sha256 \
          mv dev/commons/configuration/2.4-RC2/binaries/commons-configuration2-2.4-bin.tar.gz.sha512 release/commons/configuration/binaries/commons-configuration2-2.4-bin.tar.gz.sha512 \
          mv dev/commons/configuration/2.4-RC2/binaries/commons-configuration2-2.4-bin.zip release/commons/configuration/binaries/commons-configuration2-2.4-bin.zip \
          mv dev/commons/configuration/2.4-RC2/binaries/commons-configuration2-2.4-bin.zip.asc release/commons/configuration/binaries/commons-configuration2-2.4-bin.zip.asc \
          mv dev/commons/configuration/2.4-RC2/binaries/commons-configuration2-2.4-bin.zip.sha256 release/commons/configuration/binaries/commons-configuration2-2.4-bin.zip.sha256 \
          mv dev/commons/configuration/2.4-RC2/binaries/commons-configuration2-2.4-bin.zip.sha512 release/commons/configuration/binaries/commons-configuration2-2.4-bin.zip.sha512 \
          mv dev/commons/configuration/2.4-RC2/source/commons-configuration2-2.4-src.tar.gz release/commons/configuration/source/commons-configuration2-2.4-src.tar.gz \
          mv dev/commons/configuration/2.4-RC2/source/commons-configuration2-2.4-src.tar.gz.asc release/commons/configuration/source/commons-configuration2-2.4-src.tar.gz.asc \
          mv dev/commons/configuration/2.4-RC2/source/commons-configuration2-2.4-src.tar.gz.sha256 release/commons/configuration/source/commons-configuration2-2.4-src.tar.gz.sha256 \
          mv dev/commons/configuration/2.4-RC2/source/commons-configuration2-2.4-src.tar.gz.sha512 release/commons/configuration/source/commons-configuration2-2.4-src.tar.gz.sha512 \
          mv dev/commons/configuration/2.4-RC2/source/commons-configuration2-2.4-src.zip release/commons/configuration/source/commons-configuration2-2.4-src.zip \
          mv dev/commons/configuration/2.4-RC2/source/commons-configuration2-2.4-src.zip.asc release/commons/configuration/source/commons-configuration2-2.4-src.zip.asc \
          mv dev/commons/configuration/2.4-RC2/source/commons-configuration2-2.4-src.zip.sha256 release/commons/configuration/source/commons-configuration2-2.4-src.zip.sha256 \
          mv dev/commons/configuration/2.4-RC2/source/commons-configuration2-2.4-src.zip.sha512 release/commons/configuration/source/commons-configuration2-2.4-src.zip.sha512 \
          -m "Publish commons-configuration 2.4 Release"
