#!/bin/bash

svnmucc -U https://dist.apache.org/repos/dist \
          rm release/commons/codec/RELEASE-NOTES.txt \
          rm release/commons/codec/README.html \
          rm release/commons/codec/binaries/commons-codec-1.11-bin.tar.gz \
          rm release/commons/codec/binaries/commons-codec-1.11-bin.tar.gz.asc \
          rm release/commons/codec/binaries/commons-codec-1.11-bin.tar.gz.sha256 \
          rm release/commons/codec/binaries/commons-codec-1.11-bin.tar.gz.sha1 \
          rm release/commons/codec/binaries/commons-codec-1.11-bin.zip \
          rm release/commons/codec/binaries/commons-codec-1.11-bin.zip.asc \
          rm release/commons/codec/binaries/commons-codec-1.11-bin.zip.sha256 \
          rm release/commons/codec/binaries/commons-codec-1.11-bin.zip.sha1 \
          rm release/commons/codec/source/commons-codec-1.11-src.tar.gz \
          rm release/commons/codec/source/commons-codec-1.11-src.tar.gz.asc \
          rm release/commons/codec/source/commons-codec-1.11-src.tar.gz.sha256 \
          rm release/commons/codec/source/commons-codec-1.11-src.tar.gz.sha1 \
          rm release/commons/codec/source/commons-codec-1.11-src.zip \
          rm release/commons/codec/source/commons-codec-1.11-src.zip.asc \
          rm release/commons/codec/source/commons-codec-1.11-src.zip.sha256 \
          rm release/commons/codec/source/commons-codec-1.11-src.zip.sha1 \
          mv dev/commons/codec/1.12-RC3/RELEASE-NOTES.txt release/commons/codec/RELEASE-NOTES.txt \
          mv dev/commons/codec/1.12-RC3/README.html release/commons/codec/README.html \
          mv dev/commons/codec/1.12-RC3/binaries/commons-codec-1.12-bin.tar.gz release/commons/codec/binaries/commons-codec-1.12-bin.tar.gz \
          mv dev/commons/codec/1.12-RC3/binaries/commons-codec-1.12-bin.tar.gz.asc release/commons/codec/binaries/commons-codec-1.12-bin.tar.gz.asc \
          mv dev/commons/codec/1.12-RC3/binaries/commons-codec-1.12-bin.tar.gz.sha512 release/commons/codec/binaries/commons-codec-1.12-bin.tar.gz.sha512 \
          mv dev/commons/codec/1.12-RC3/binaries/commons-codec-1.12-bin.zip release/commons/codec/binaries/commons-codec-1.12-bin.zip \
          mv dev/commons/codec/1.12-RC3/binaries/commons-codec-1.12-bin.zip.asc release/commons/codec/binaries/commons-codec-1.12-bin.zip.asc \
          mv dev/commons/codec/1.12-RC3/binaries/commons-codec-1.12-bin.zip.sha512 release/commons/codec/binaries/commons-codec-1.12-bin.zip.sha512 \
          mv dev/commons/codec/1.12-RC3/source/commons-codec-1.12-src.tar.gz release/commons/codec/source/commons-codec-1.12-src.tar.gz \
          mv dev/commons/codec/1.12-RC3/source/commons-codec-1.12-src.tar.gz.asc release/commons/codec/source/commons-codec-1.12-src.tar.gz.asc \
          mv dev/commons/codec/1.12-RC3/source/commons-codec-1.12-src.tar.gz.sha512 release/commons/codec/source/commons-codec-1.12-src.tar.gz.sha512 \
          mv dev/commons/codec/1.12-RC3/source/commons-codec-1.12-src.zip release/commons/codec/source/commons-codec-1.12-src.zip \
          mv dev/commons/codec/1.12-RC3/source/commons-codec-1.12-src.zip.asc release/commons/codec/source/commons-codec-1.12-src.zip.asc \
          mv dev/commons/codec/1.12-RC3/source/commons-codec-1.12-src.zip.sha512 release/commons/codec/source/commons-codec-1.12-src.zip.sha512 \
          -m "Publish commons-codec 1.12 Release"
