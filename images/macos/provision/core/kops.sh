#!/bin/bash -e -o pipefail

echo Installing kOps - Kubernetes Operations...

brew install kops

invoke_tests "Common" "kops"
