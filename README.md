# <img align="center" src="img/terraform.svg" width="70">&nbsp;&nbsp; aws-terraform
[![Build Status](https://img.shields.io/travis/com/ArtiomL/aws-terraform/develop.svg)](https://travis-ci.com/ArtiomL/aws-terraform)
[![Releases](https://img.shields.io/github/release/ArtiomL/aws-terraform.svg)](https://github.com/ArtiomL/aws-terraform/releases)
[![Commits](https://img.shields.io/github/commits-since/ArtiomL/aws-terraform/latest.svg?label=commits%20since)](https://github.com/ArtiomL/aws-terraform/commits/master)
[![Maintenance](https://img.shields.io/maintenance/yes/2019.svg)](https://github.com/ArtiomL/aws-terraform/graphs/code-frequency)
[![Issues](https://img.shields.io/github/issues/ArtiomL/aws-terraform.svg)](https://github.com/ArtiomL/aws-terraform/issues)
[![Docker Hub](https://img.shields.io/docker/pulls/artioml/aws-terraform.svg)](https://hub.docker.com/r/artioml/aws-terraform/)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)
[![Slack Status](https://f5cloudsolutions.herokuapp.com/badge.svg)](https://f5cloudsolutions.herokuapp.com)

&nbsp;&nbsp;

## Table of Contents
- [Description](#description)
- [Installation](#installation)
	- [Run](#run)
	- [Credentials](#credentials)
- [Extensibility](#extensibility)
- [Modules](#modules)
- [License](LICENSE)

&nbsp;&nbsp;

## Description

Cloud Infrastructure as Code with declarative modules and configuration files.

&nbsp;&nbsp;

## Installation

### Run
```shell
# Terraform v0.11.10
docker run -it artioml/aws-terraform

```

### Credentials
The home directory used when running the image (`/home/user/`) has the following [structure](.creds).  
Each subdirectory contains the relevant access keys / tokens for the corresponding public cloud.  
Either edit the `credentials` files for your environment, or mount a local directory with the same path structure:

```
docker run -it -v /Users/tdurden/:/home/user/ artioml/aws-terraform
```

&nbsp;&nbsp;

## Extensibility
The container will dynamically pull down (and `cd` to) whatever GitHub repository is specified in the `REPO` environment variable. This enables Continuous Delivery of new content every time the container is started and that repository is updated. It also allows you to load and run your own custom Terraform environments.

```shell
-e "REPO=<GitHub_Username>/<Repo_Name>"
```
For [example](https://github.com/ArtiomL/terraform-do):
```shell
docker run -it -e "REPO=artioml/terraform-do" artioml/aws-terraform
```

&nbsp;&nbsp;


