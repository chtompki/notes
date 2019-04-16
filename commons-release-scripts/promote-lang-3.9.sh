#!/bin/bash

svnmucc -U https://dist.apache.org/repos/dist \
          rm release/commons/lang/RELEASE-NOTES.txt \
          rm release/commons/lang/binaries/commons-lang3-3.8.1-bin.tar.gz \
          rm release/commons/lang/binaries/commons-lang3-3.8.1-bin.tar.gz.asc \
          rm release/commons/lang/binaries/commons-lang3-3.8.1-bin.tar.gz.sha256 \
          rm release/commons/lang/binaries/commons-lang3-3.8.1-bin.zip \
          rm release/commons/lang/binaries/commons-lang3-3.8.1-bin.zip.asc \
          rm release/commons/lang/binaries/commons-lang3-3.8.1-bin.zip.sha256 \
          rm release/commons/lang/source/commons-lang3-3.8.1-src.tar.gz \
          rm release/commons/lang/source/commons-lang3-3.8.1-src.tar.gz.asc \
          rm release/commons/lang/source/commons-lang3-3.8.1-src.tar.gz.sha256 \
          rm release/commons/lang/source/commons-lang3-3.8.1-src.zip \
          rm release/commons/lang/source/commons-lang3-3.8.1-src.zip.asc \
          rm release/commons/lang/source/commons-lang3-3.8.1-src.zip.sha256 \
          mv dev/commons/lang/3.9-RC2/RELEASE-NOTES.txt release/commons/lang/RELEASE-NOTES.txt \
          mv dev/commons/lang/3.9-RC2/binaries/commons-lang3-3.9-bin.tar.gz release/commons/lang/binaries/commons-lang3-3.9-bin.tar.gz \
          mv dev/commons/lang/3.9-RC2/binaries/commons-lang3-3.9-bin.tar.gz.asc release/commons/lang/binaries/commons-lang3-3.9-bin.tar.gz.asc \
          mv dev/commons/lang/3.9-RC2/binaries/commons-lang3-3.9-bin.tar.gz.sha512 release/commons/lang/binaries/commons-lang3-3.9-bin.tar.gz.sha512 \
          mv dev/commons/lang/3.9-RC2/binaries/commons-lang3-3.9-bin.zip release/commons/lang/binaries/commons-lang3-3.9-bin.zip \
          mv dev/commons/lang/3.9-RC2/binaries/commons-lang3-3.9-bin.zip.asc release/commons/lang/binaries/commons-lang3-3.9-bin.zip.asc \
          mv dev/commons/lang/3.9-RC2/binaries/commons-lang3-3.9-bin.zip.sha512 release/commons/lang/binaries/commons-lang3-3.9-bin.zip.sha512 \
          mv dev/commons/lang/3.9-RC2/source/commons-lang3-3.9-src.tar.gz release/commons/lang/source/commons-lang3-3.9-src.tar.gz \
          mv dev/commons/lang/3.9-RC2/source/commons-lang3-3.9-src.tar.gz.asc release/commons/lang/source/commons-lang3-3.9-src.tar.gz.asc \
          mv dev/commons/lang/3.9-RC2/source/commons-lang3-3.9-src.tar.gz.sha512 release/commons/lang/source/commons-lang3-3.9-src.tar.gz.sha512 \
          mv dev/commons/lang/3.9-RC2/source/commons-lang3-3.9-src.zip release/commons/lang/source/commons-lang3-3.9-src.zip \
          mv dev/commons/lang/3.9-RC2/source/commons-lang3-3.9-src.zip.asc release/commons/lang/source/commons-lang3-3.9-src.zip.asc \
          mv dev/commons/lang/3.9-RC2/source/commons-lang3-3.9-src.zip.sha512 release/commons/lang/source/commons-lang3-3.9-src.zip.sha512 \
          -m "Publish commons-lang 3.9 Release, from an airplane"
