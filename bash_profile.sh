#!/bin/bash

cat > ~/.bash_profile << "EOF"
export HOME=/home/lfs
export TERM=linux
export PS1='\u:\w\$ '
export PATH=/bin:/usr/bin
EOF

cat > ~/.bash_profile << "EOF"
exec env -i HOME=$HOME TERM=$TERM PS1='\u:\w\$ ' /bin/bash
EOF
