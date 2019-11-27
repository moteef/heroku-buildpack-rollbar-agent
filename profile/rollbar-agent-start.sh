#!/usr/bin/env bash

echo "Starting rollbar-agent..."

ROLLBAR_AGENT_CONF=/app/.rollbar-agent/rollbar-agent.conf

echo "Replacing ROLLBAR_ACCESS_TOKEN in $ROLLBAR_AGENT_CONF"
sed -i -e "s/ROLLBAR_ACCESS_TOKEN/$ROLLBAR_ACCESS_TOKEN/" "$ROLLBAR_AGENT_CONF"

# source $VIRTUALENV/bin/activate
python -u rollbar-agent --config=$CONFIG_FILE &

echo "Started rollbar-agent"

