function remind-me --description "Send a notification after specified time"
  if test (count $argv) -eq 0
    echo "Please specify a time and message"
    return 1
  else if test (count $argv) -eq 1
    echo "notify-send -t 0 'Remind me!'" | at $argv[1] 2>/dev/null
  else
    echo "notify-send -t 0 $argv[2]" | at $argv[1] 2>/dev/null
  end
end
