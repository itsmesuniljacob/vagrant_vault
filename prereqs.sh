#!/usr/bin/env bash

echo "------------------------- Operation Starting ------------------------------------------"
echo "Setting up OS..."

sudo curl --silent -Lo /bin/jq https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64
sudo chmod +x /bin/jq

YUM=$(which yum 2>/dev/null)
APT_GET=$(which apt-get 2>/dev/null)

if [[ ! -z ${YUM} ]]; then
  echo "Updating OS..."
  sudo yum update -y
  sudo yum install -y unzip
else
  echo "Can't tell if rhel or ubuntu"
  exit 1;
fi

echo "------------------------- Operation Ended ------------------------------------------"