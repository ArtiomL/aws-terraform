#!/bin/sh
# aws-terraform - Docker Wrapper Script
# https://github.com/ArtiomL/aws-terraform
# Artiom Lichtenstein
# v1.0.6, 08/10/2019

# Extensibility
if [[ ! -z "$REPO" ]]; then
	git clone "https://github.com/$REPO.git"
	cd $(echo "$REPO" | cut -d"/" -f2)
fi

exec /bin/bash
