################################################################################
##  File:  Install-kops.ps1
##  Desc:  Install Kubernetes Operations
################################################################################

Choco-Install -PackageName kubernetes-kops


Invoke-PesterTests -TestFile "Tools" -TestName "kops"
