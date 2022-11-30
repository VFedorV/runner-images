#!/bin/bash -e
################################################################################
##  File:  kops.sh
##  Desc:  Installs Kubernetes Operations
################################################################################

#source $HELPER_SCRIPTS/install.sh

# Install Kubernetes Operations
curl -Lo kops https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
# Mark it as executable
chmod +x kops
# Add bicep to PATH (requires admin)
sudo mv kops /usr/local/bin/kops


invoke_tests "Tools" "kops"

