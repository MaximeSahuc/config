#!/usr/bin/env bash

# Install required packages
sudo apt update && sudo apt install -y \
  fprintd \
  libpam-fprintd

# Enable fingerprint authentication on a system-wide basis
pam-auth-update --enable fprintd
