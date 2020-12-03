#!/bin/bash
curl --request POST --url $U --user $AUTH --header $H1 --header $H2 --data '{"fields":{"summary":"CodeBuild - Build Failed","issuetype":{"name":"Bug"},"project":{"key":"TCP"},"description":{"type":"doc","version":1,"content":[{"type":"paragraph","content":[{"text":"Build ID:'$CODEBUILD_BUILD_ID' \n Build Number:'$CODEBUILD_BUILD_NUMBER'","type":"text"}]}]}}}'
