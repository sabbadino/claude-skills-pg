#!/bin/bash
# ANTHROPIC_BASE_URL=http://localhost:8080/ 

# https://www.ai.moda/en/blog/tutorial-intercepting-claude-code-requests

# 

mitmweb --listen-host 127.0.0.1 --listen-port 58888 --web-open-browser > /dev/null 2>&1 &

export NODE_EXTRA_CA_CERTS="C:\Users\esabbadin\.mitmproxy\mitmproxy-ca-cert.pem"

export NODE_TLS_REJECT_UNAUTHORIZED=0

export HTTP_PROXY="http://127.0.0.1:58888"

export HTTPS_PROXY="http://127.0.0.1:58888"

claude