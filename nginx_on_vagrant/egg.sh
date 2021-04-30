#!/bin/bash
cat <<EOF >> /root/.bashrc
command_not_found_handle () {
    printf "Can you even like, type?\n"
    return 127
}
EOF
source /root/.bashrc
clear