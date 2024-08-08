#!/bin/bash

cd /opt/tmp
curl "https://api.github.com/repos/xvzc/SpoofDPI/releases/latest" |
    grep '"tag_name":' |
    sed -E 's/.*"([^"]+)".*/\1/' |
    xargs -I {} curl -OL "https://github.com/xvzc/SpoofDPI/releases/download/"\{\}"/spoof-dpi-${1}.tar.gz"

tar -xzvf /opt/tmp/spoof-dpi-${1}.tar.gz && \
    rm -rf /opt/tmp/spoof-dpi-${1}.tar.gz && \
    mv /opt/tmp/spoof-dpi /opt/bin

if [ $? -ne 0 ]; then
    echo "Error. exiting now"
    exit
fi

echo ""
echo "Successfully installed SpoofDPI."
