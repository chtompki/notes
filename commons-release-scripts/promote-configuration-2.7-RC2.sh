#!/bin/bash

svnmucc -U https://dist.apache.org/repos/dist \
          rm release/commons/configuration/RELEASE-NOTES.txt \
          rm release/commons/configuration/README.html \
          rm release/commons/configuration/binaries/commons-configuration2-2.6-bin.tar.gz \
          rm release/commons/configuration/binaries/commons-configuration2-2.6-bin.tar.gz.asc \
          rm release/commons/configuration/binaries/commons-configuration2-2.6-bin.tar.gz.sha512 \
          rm release/commons/configuration/binaries/commons-configuration2-2.6-bin.zip \
          rm release/commons/configuration/binaries/commons-configuration2-2.6-bin.zip.asc \
          rm release/commons/configuration/binaries/commons-configuration2-2.6-bin.zip.sha512 \
          rm release/commons/configuration/source/commons-configuration2-2.6-src.tar.gz \
          rm release/commons/configuration/source/commons-configuration2-2.6-src.tar.gz.asc \
          rm release/commons/configuration/source/commons-configuration2-2.6-src.tar.gz.sha512 \
          rm release/commons/configuration/source/commons-configuration2-2.6-src.zip \
          rm release/commons/configuration/source/commons-configuration2-2.6-src.zip.asc \
          rm release/commons/configuration/source/commons-configuration2-2.6-src.zip.sha512 \
          mv dev/commons/configuration/2.7-RC2/RELEASE-NOTES.txt release/commons/configuration/RELEASE-NOTES.txt \
          mv dev/commons/configuration/2.7-RC2/README.html release/commons/configuration/README.html \
          mv dev/commons/configuration/2.7-RC2/binaries/commons-configuration2-2.7-bin.tar.gz release/commons/configuration/binaries/commons-configuration2-2.7-bin.tar.gz \
          mv dev/commons/configuration/2.7-RC2/binaries/commons-configuration2-2.7-bin.tar.gz.asc release/commons/configuration/binaries/commons-configuration2-2.7-bin.tar.gz.asc \
          mv dev/commons/configuration/2.7-RC2/binaries/commons-configuration2-2.7-bin.tar.gz.sha512 release/commons/configuration/binaries/commons-configuration2-2.7-bin.tar.gz.sha512 \
          mv dev/commons/configuration/2.7-RC2/binaries/commons-configuration2-2.7-bin.zip release/commons/configuration/binaries/commons-configuration2-2.7-bin.zip \
          mv dev/commons/configuration/2.7-RC2/binaries/commons-configuration2-2.7-bin.zip.asc release/commons/configuration/binaries/commons-configuration2-2.7-bin.zip.asc \
          mv dev/commons/configuration/2.7-RC2/binaries/commons-configuration2-2.7-bin.zip.sha512 release/commons/configuration/binaries/commons-configuration2-2.7-bin.zip.sha512 \
          mv dev/commons/configuration/2.7-RC2/source/commons-configuration2-2.7-src.tar.gz release/commons/configuration/source/commons-configuration2-2.7-src.tar.gz \
          mv dev/commons/configuration/2.7-RC2/source/commons-configuration2-2.7-src.tar.gz.asc release/commons/configuration/source/commons-configuration2-2.7-src.tar.gz.asc \
          mv dev/commons/configuration/2.7-RC2/source/commons-configuration2-2.7-src.tar.gz.sha512 release/commons/configuration/source/commons-configuration2-2.7-src.tar.gz.sha512 \
          mv dev/commons/configuration/2.7-RC2/source/commons-configuration2-2.7-src.zip release/commons/configuration/source/commons-configuration2-2.7-src.zip \
          mv dev/commons/configuration/2.7-RC2/source/commons-configuration2-2.7-src.zip.asc release/commons/configuration/source/commons-configuration2-2.7-src.zip.asc \
          mv dev/commons/configuration/2.7-RC2/source/commons-configuration2-2.7-src.zip.sha512 release/commons/configuration/source/commons-configuration2-2.7-src.zip.sha512 \
          -m "Publish commons-configuration 2.7 Release"
