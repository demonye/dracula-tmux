#!/usr/bin/env bash

message=$1

main()
{
  notifyfile=/tmp/.dracula-tmux-notify
  message=$(cat $notifyfile 2>/dev/null)
  if [ -n "$message" ]; then
    for i in 1 2; do
      echo $message && sleep 1 && printf "%${#message}s\n" " " && sleep 1
    done
  fi
}

main
