#!/usr/bin/env bash

echo "Starting rollbar-agent..."

ROLLBAR_AGENT_CONF=/app/config/rollbar_agent_conf.yml

if [ ! -d /app/tmp/rollbar_agent ]; then
  mkdir -p /app/tmp/rollbar_agent
fi

/app/bin/rollbar-agent agent -c $ROLLBAR_AGENT_CONF > /app/tmp/rollbar_agent/logs.txt 2>&1 &

echo "Started rollbar-agent"
