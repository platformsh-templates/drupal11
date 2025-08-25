#! /bin/sh

# Quickly sets up Platform.sh settings
# using a config yaml file.
#
# Usage:
#
# ./platformsh-setup.sh

CONFIG_FILE="$(dirname "$0")/platformsh-setup.config.yml"

PID=$(awk '/^[[:space:]]*project_id[[:space:]]*:/ {sub(/.*:[[:space:]]*/,""); sub(/[[:space:]]*#.*/,""); gsub(/^"|"$|^[[:space:]]+|[[:space:]]+$/,""); print; exit}' "$CONFIG_FILE")

[ -n "$PID" ] || { echo "project_id not found in $CONFIG_FILE" >&2; exit 1; }

platform project:set-remote "$PID"
