#!/bin/bash
# aws-terraform - Run Tests
# https://github.com/ArtiomL/aws-terraform
# Artiom Lichtenstein
# v1.0.6, 08/10/2019

set -xeo pipefail

REPO="artioml/aws-terraform"

# Terraform
str_TEST="terraform --version; \
	find modules/ -type d -print0 | xargs -0 -n1 -t terraform init"

if [ "$TRAVIS" == "true" ]; then
	docker run $REPO /bin/sh -c "set -xeo pipefail; $str_TEST"
else
	eval "$str_TEST"
fi
