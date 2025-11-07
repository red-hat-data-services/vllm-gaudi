#!/bin/sh

# Start sshd in the background
/usr/sbin/sshd -p 3022 &

# Run the VLLM API server as vllm
su - vllm -c 'python3 -m vllm.entrypoints.openai.api_server'
