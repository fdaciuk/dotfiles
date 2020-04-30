#!/bin/bash
killall conky 2>/dev/null
sleep 2s && conky -c "$HOME/.config/conky/blue.conkyrc" &
