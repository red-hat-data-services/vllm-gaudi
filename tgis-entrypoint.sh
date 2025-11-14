#!/bin/sh

# Start sshd in the background
/usr/sbin/sshd -p 3022 &

# Run the TGIS adapter API as vllm
su - vllm -c 'python3 -m vllm_tgis_adapter --uvicorn-log-level=warning'
