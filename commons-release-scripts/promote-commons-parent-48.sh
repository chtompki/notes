#!/bin/bash

svnmucc -U https://dist.apache.org/repos/dist \
          rm release/commons/commons-parent/RELEASE-NOTES.txt \
          rm release/commons/commons-parent/commons-parent-47-src.tar.gz \
          rm release/commons/commons-parent/commons-parent-47-src.tar.gz.asc \
          rm release/commons/commons-parent/commons-parent-47-src.tar.gz.sha256 \
          rm release/commons/commons-parent/commons-parent-47-src.tar.gz.sha1 \
          rm release/commons/commons-parent/commons-parent-47-src.zip \
          rm release/commons/commons-parent/commons-parent-47-src.zip.asc \
          rm release/commons/commons-parent/commons-parent-47-src.zip.sha256 \
          rm release/commons/commons-parent/commons-parent-47-src.zip.sha1 \
          mv dev/commons/commons-parent/48-RC1/RELEASE-NOTES.txt release/commons/commons-parent/RELEASE-NOTES.txt \
          mv dev/commons/commons-parent/48-RC1/source/commons-parent-48-src.tar.gz release/commons/commons-parent/commons-parent-48-src.tar.gz \
          mv dev/commons/commons-parent/48-RC1/source/commons-parent-48-src.tar.gz.asc release/commons/commons-parent/commons-parent-48-src.tar.gz.asc \
          mv dev/commons/commons-parent/48-RC1/source/commons-parent-48-src.tar.gz.sha512 release/commons/commons-parent/commons-parent-48-src.tar.gz.sha512 \
          mv dev/commons/commons-parent/48-RC1/source/commons-parent-48-src.zip release/commons/commons-parent/commons-parent-48-src.zip \
          mv dev/commons/commons-parent/48-RC1/source/commons-parent-48-src.zip.asc release/commons/commons-parent/commons-parent-48-src.zip.asc \
          mv dev/commons/commons-parent/48-RC1/source/commons-parent-48-src.zip.sha512 release/commons/commons-parent/commons-parent-48-src.zip.sha512 \
          -m "Publish commons-parent 48 Release"
