#!/bin/bash

script_path=$(cd `dirname $0` && pwd)/bin

cat >> ~/.bashrc <<EOF

# Dev Tools
export PATH=\$PATH:$script_path
EOF

echo Now, you could run "source ~/.bashrc" to enable it in current shell.