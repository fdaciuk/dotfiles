#!/bin/bash

# Read JSON input from stdin
input=$(cat)

# Extract model display name
model=$(echo "$input" | jq -r '.model.display_name')

# Calculate remaining percentage from raw token counts for precision
ctx_size=$(echo "$input" | jq -r '.context_window.context_window_size // empty')
input_tok=$(echo "$input" | jq -r '.context_window.current_usage.input_tokens // 0')
output_tok=$(echo "$input" | jq -r '.context_window.current_usage.output_tokens // 0')
cache_create=$(echo "$input" | jq -r '.context_window.current_usage.cache_creation_input_tokens // 0')
cache_read=$(echo "$input" | jq -r '.context_window.current_usage.cache_read_input_tokens // 0')

if [ -n "$ctx_size" ] && [ "$ctx_size" -gt 0 ] 2>/dev/null; then
  total_used=$((input_tok + output_tok + cache_create + cache_read))
  remaining=$(echo "scale=1; (($ctx_size - $total_used) * 100 / $ctx_size) - 3" | bc)
else
  remaining=100.0
fi

# Calculate used percentage
used=$(echo "100 - $remaining" | bc)

# Create progress bar (20 characters wide)
bar_width=20
filled=$(printf "%.0f" $(echo "$used * $bar_width / 100" | bc -l))
empty=$((bar_width - filled))

# Build the bar
bar=""
for ((i=0; i<filled; i++)); do bar="${bar}█"; done
for ((i=0; i<empty; i++)); do bar="${bar}░"; done

# Format the output with colors
output=$(printf "\033[36m%s\033[0m \033[2m[\033[0m%s\033[2m]\033[0m \033[33m%.1f%%\033[0m free" "$model" "$bar" "$remaining")

# Add warning if remaining is 30% or less
if [ $(echo "$remaining <= 30" | bc) -eq 1 ]; then
  output="$output \033[31m⚠ Use /nc-checkpoint\033[0m"
fi

echo -e "$output"
