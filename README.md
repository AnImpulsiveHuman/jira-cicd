# Integrating Security with CI/CD Pipeline

AWS CodePipeline is used to create a basic CI/CD pipeline to automate the process of security testing our application. A simple NodeJs "Hello World" application is used.

As our focus is on checking our application for security issues, we only have the Source and the Build phase in the pipeline and have skipped the Deployment phase.
This is because all of our automated testing takes place during the Build stage of the pipeline.

## Process

The process is quite simple. Whenever a commit is made in our github repo, AWS CodePipeline is triggered and we go to the Build phase. This is where all the security testing is done.

## Security Checks

To keep things simple, we check few important things for security issues.
* As this is a NodeJs application, the dependencies used.
* The Dockerfile and the base image used.
* CloudFormation templates.

Even though our application does not require any CloudFormation templates, there are couple of templates in the folder "cf-templates" just for the purpose of demonstration.

## Tools

Two opensource tools have been used.
* Snyk    - Scans the NodeJs dependencies, Dockerfile and the Base Image for known vulnerabilites.
* Checkov - Checks the CloudFormation templates for misconfiguration that could lead to various security issues.

This repo just contains the files used. For a detailed writeup on creating the pipeline along with the deployment phase and integrating Snyk, check out my post here.
Integrating checkov or most of the other tools for that matter can be done similarly.
