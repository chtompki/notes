#!/bin/bash

svnmucc -U https://dist.apache.org/repos/dist \
          rm release/commons/rng/RELEASE-NOTES.txt \
          rm release/commons/rng/HEADER.html \
          rm release/commons/rng/README.html \
          rm release/commons/rng/README.md \
          rm release/commons/rng/binaries/commons-rng-1.0-bin.tar.gz \
          rm release/commons/rng/binaries/commons-rng-1.0-bin.tar.gz.asc \
          rm release/commons/rng/binaries/commons-rng-1.0-bin.tar.gz.sha256 \
          rm release/commons/rng/binaries/commons-rng-1.0-bin.tar.gz.sha1 \
          rm release/commons/rng/binaries/commons-rng-1.0-bin.zip \
          rm release/commons/rng/binaries/commons-rng-1.0-bin.zip.asc \
          rm release/commons/rng/binaries/commons-rng-1.0-bin.zip.sha256 \
          rm release/commons/rng/binaries/commons-rng-1.0-bin.zip.sha1 \
          rm release/commons/rng/source/commons-rng-1.0-src.tar.gz \
          rm release/commons/rng/source/commons-rng-1.0-src.tar.gz.asc \
          rm release/commons/rng/source/commons-rng-1.0-src.tar.gz.sha256 \
          rm release/commons/rng/source/commons-rng-1.0-src.tar.gz.sha1 \
          rm release/commons/rng/source/commons-rng-1.0-src.zip \
          rm release/commons/rng/source/commons-rng-1.0-src.zip.asc \
          rm release/commons/rng/source/commons-rng-1.0-src.zip.sha256 \
          rm release/commons/rng/source/commons-rng-1.0-src.zip.sha1 \
          rm dev/commons/rng/1.1-RC7/site \
          mv dev/commons/rng/1.1-RC7/RELEASE-NOTES.txt release/commons/rng/RELEASE-NOTES.txt \
          mv dev/commons/rng/1.1-RC7/HEADER.html release/commons/rng/HEADER.html \
          mv dev/commons/rng/1.1-RC7/README.html release/commons/rng/README.html \
          mv dev/commons/rng/1.1-RC7/binaries/commons-rng-1.1-bin.tar.gz release/commons/rng/binaries/commons-rng-1.1-bin.tar.gz \
          mv dev/commons/rng/1.1-RC7/binaries/commons-rng-1.1-bin.tar.gz.asc release/commons/rng/binaries/commons-rng-1.1-bin.tar.gz.asc \
          mv dev/commons/rng/1.1-RC7/binaries/commons-rng-1.1-bin.tar.gz.sha256 release/commons/rng/binaries/commons-rng-1.1-bin.tar.gz.sha256 \
          mv dev/commons/rng/1.1-RC7/binaries/commons-rng-1.1-bin.tar.gz.sha1 release/commons/rng/binaries/commons-rng-1.1-bin.tar.gz.sha1 \
          mv dev/commons/rng/1.1-RC7/binaries/commons-rng-1.1-bin.zip release/commons/rng/binaries/commons-rng-1.1-bin.zip \
          mv dev/commons/rng/1.1-RC7/binaries/commons-rng-1.1-bin.zip.asc release/commons/rng/binaries/commons-rng-1.1-bin.zip.asc \
          mv dev/commons/rng/1.1-RC7/binaries/commons-rng-1.1-bin.zip.sha256 release/commons/rng/binaries/commons-rng-1.1-bin.zip.sha256 \
          mv dev/commons/rng/1.1-RC7/binaries/commons-rng-1.1-bin.zip.sha1 release/commons/rng/binaries/commons-rng-1.1-bin.zip.sha1 \
          mv dev/commons/rng/1.1-RC7/source/commons-rng-1.1-src.tar.gz release/commons/rng/source/commons-rng-1.1-src.tar.gz \
          mv dev/commons/rng/1.1-RC7/source/commons-rng-1.1-src.tar.gz.asc release/commons/rng/source/commons-rng-1.1-src.tar.gz.asc \
          mv dev/commons/rng/1.1-RC7/source/commons-rng-1.1-src.tar.gz.sha256 release/commons/rng/source/commons-rng-1.1-src.tar.gz.sha256 \
          mv dev/commons/rng/1.1-RC7/source/commons-rng-1.1-src.tar.gz.sha1 release/commons/rng/source/commons-rng-1.1-src.tar.gz.sha1 \
          mv dev/commons/rng/1.1-RC7/source/commons-rng-1.1-src.zip release/commons/rng/source/commons-rng-1.1-src.zip \
          mv dev/commons/rng/1.1-RC7/source/commons-rng-1.1-src.zip.asc release/commons/rng/source/commons-rng-1.1-src.zip.asc \
          mv dev/commons/rng/1.1-RC7/source/commons-rng-1.1-src.zip.sha256 release/commons/rng/source/commons-rng-1.1-src.zip.sha256 \
          mv dev/commons/rng/1.1-RC7/source/commons-rng-1.1-src.zip.sha1 release/commons/rng/source/commons-rng-1.1-src.zip.sha1 \
          -m "Publish commons-rng 1.1 Release"
