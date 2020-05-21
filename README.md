# Scan Images Built in CircleCI
This page contains a simple config.yml you can use in CircleCI in order to scan images with Aqua CSP v4.6.

## Dockerfile
Sample here: https://github.com/dstubked/circleCI/blob/master/Dockerfile

Modify the Dockerfile to include there lines:

Environment variables used for the build:
```
ARG AQUA_SERVER_URL
ARG AQUA_USERNAME
ARG AQUA_PASSWORD
```
Add the Microscanner:
```
ADD https://get.aquasec.com/4.6.0/microscanner .
RUN chmod +x microscanner
RUN ./microscanner --no-verify --html
RUN rm -rf /microscanner
```
## CircleCI
Add environment variables in your Circle CI project for
AQUA_SERVER_URL - This should be the URL to your Aqua Console. It must be reachable from CircleCI
AQUA_USERNAME - This will be the API user to call the scan. Please use a least privileged account and not administrator!
AQUA_PASSWORD - This will be the API user password

## Scan
Scan and view the report generated as an artefact in your project
