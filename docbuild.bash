#!/bin/bash

set -e  # exit on a non-zero return code from a command
set -x  # print a trace of commands as they execute

# Enables deterministic output
# - useful when you're committing the results to host on github pages
export DOCC_JSON_PRETTYPRINT=YES

# Swift package plugin for hosted content:
#
 $(xcrun --find swift) package \
     --allow-writing-to-directory ./docs \
     generate-documentation \
     --fallback-bundle-identifier com.github.heckj.DoccSnippetExample \
     --target DoccSnippetExample \
     --output-path ./docs \
     --transform-for-static-hosting \
     --hosting-base-path 'DoccSnippetExample'

 $(xcrun --find swift) package \
     --disable-sandbox \
     --allow-writing-to-directory ./docs \
     preview-documentation \
     --fallback-bundle-identifier com.github.heckj.DoccSnippetExample \
     --target DoccSnippetExample \
