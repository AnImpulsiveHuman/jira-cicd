#!/bin/bash
curl --request POST --url $U --user $AUTH --header $H1 --header $H2 --data '{"fields":{"summary":"CodeBuild - Build Failed","issuetype":{"name":"Bug"},"project":{"key":"TCP"},"description":{"type":"doc","version":1,"content":[{"type":"paragraph","content":[{"text":"Build ID:'$CODEBUILD_BUILD_ID' \n Build Number:'$CODEBUILD_BUILD_NUMBER'","type":"text"}]}]}}}'

#This creates an issue (type: Bug) in jira whenever the build fails. The description contains the Build ID and the Build Number.

#This command can also be used in the buildspec.yml file. But we have to make sure that a space does not come right after a colon as that pair is treated as a special character in yaml.
#The "--url" and "--header" parameters have been declared as env variables and used.
#The  "--user" parameter requires the email and the api key in the following format -> email:apikey
#The value for the "--user" parameter, that is, the email and the api key are stored in AWS Secrets Manager. They are retrieved and stored as env variables.
