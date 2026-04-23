#!/bin/bash

TYPE="${1:-done}"
MESSAGE="${2:-}"

# Default messages per type
case "$TYPE" in
  done)
    SOUND="complete"
    DEFAULT_MSG="Task completed"
    TITLE="Claude Code ✅"
    URGENCY="normal"
    ;;
  waiting)
    SOUND="dialog-information"
    DEFAULT_MSG="Need your attention"
    TITLE="Claude Code ⏳"
    URGENCY="normal"
    ;;
  error)
    SOUND="dialog-error"
    DEFAULT_MSG="Something went wrong"
    TITLE="Claude Code ❌"
    URGENCY="critical"
    ;;
  info)
    SOUND="message"
    DEFAULT_MSG="FYI"
    TITLE="Claude Code 💡"
    URGENCY="low"
    ;;
  *)
    SOUND="complete"
    DEFAULT_MSG="Notification"
    TITLE="Claude Code"
    URGENCY="normal"
    ;;
esac

# Use custom message if provided, otherwise default
FINAL_MSG="${MESSAGE:-$DEFAULT_MSG}"

# Play sound in background (try paplay, then canberra)
SOUND_FILE="/usr/share/sounds/freedesktop/stereo/${SOUND}.oga"
if command -v paplay &>/dev/null && [ -f "$SOUND_FILE" ]; then
  paplay "$SOUND_FILE" &
elif command -v canberra-gtk-play &>/dev/null; then
  canberra-gtk-play -i "$SOUND" &
fi

# Show desktop notification
notify-send -u "$URGENCY" "$TITLE" "$FINAL_MSG"
