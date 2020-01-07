#!/bin/bash

sudo sysctl -p /etc/sysctl.d/99-z01-sysctl.conf

cd /root

/root/bin/emqx start

/bin/bash -c "trap : TERM INT; sleep infinity & wait"
