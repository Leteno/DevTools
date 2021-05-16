#!/bin/bash

cat >> ~/.bashrc <<EOF

# Dev Tools Env start
# skip SIGTTOU issue
stty -tostop
# Dev Tools Env end
EOF

cat >> ~/.gdbinit <<EOF
# logging
set logging file /tmp/test.log
set logging on

# signal SIGTTOU issue, disturb gdb debug
handle SIGTTOU nostop
handle SIGTTOU ignore
EOF