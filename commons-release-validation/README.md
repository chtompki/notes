Tompkins technique for release validation.
==========================================

1. cd to svnhome on machine
2. `mkdir commons-X-v-RCw && cd commons-X-v-RCw && svn checkout https://dist.apache.org/repos/dist/dev/commons/X/v-RCw .`
3. cd to source and unzip the release source
4. cd into unzipped source
5. `mvn clean test install site` for both java 8 and java 11 (as of 08/03/2020
6. Browse to site built in `${svnhome}/commons-X-v-RCw/commons-X-v-RCw-src/target/site/index.html`
7. Check project reports on page particularly RAT report
8. Run `cd ${svnhome}/commons-X-v-RCw && mkdir validation`
9. Copy in `downloader.sh` and `validator.sh` (for which I've written them in this repo. Note their named for the individual releases).
10. Run `downloader.sh`
11. Run `validator.sh` to validate signatures (Note...you need gpg installed and properly configured for this to work).
