#!/bin/bash
# Start the Knowledge Base file watcher.
# Monitors all raw/ folders and auto-converts any new lecture file dropped in.
#
# Usage:
#   bash watch.sh           — runs in foreground (Ctrl+C to stop)
#   bash watch.sh --bg      — runs in background
#   bash watch.sh --stop    — stops the background watcher

VAULT="/Users/Lewis/Documents/Uni shi/Claude Uni Brain"
PID_FILE="$VAULT/.watcher.pid"

case "$1" in
  --stop)
    if [[ -f "$PID_FILE" ]]; then
      PID=$(cat "$PID_FILE")
      kill "$PID" 2>/dev/null && echo "Watcher stopped (PID $PID)." || echo "Watcher not running."
      rm -f "$PID_FILE"
    else
      echo "Watcher is not running."
    fi
    ;;
  --bg)
    if [[ -f "$PID_FILE" ]] && kill -0 "$(cat "$PID_FILE")" 2>/dev/null; then
      echo "Watcher already running (PID $(cat "$PID_FILE"))."
      exit 0
    fi
    python3 "$VAULT/_system/watch.py" > "$VAULT/.watcher.log" 2>&1 &
    echo $! > "$PID_FILE"
    echo "Watcher started in background (PID $!)."
    echo "Log: $VAULT/.watcher.log"
    echo "Stop with: bash watch.sh --stop"
    ;;
  *)
    python3 "$VAULT/_system/watch.py"
    ;;
esac
