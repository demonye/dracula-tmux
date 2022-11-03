#!/usr/bin/env bash

message=$1

main()
{
  notifyfile=/tmp/.dracula-tmux-notify

  message=$(cat $notifyfile 2>/dev/null)
  if [ -n "$message" ]; then
    chars_count=${#message}
    [ $chars_count \< $(echo -n "$message" |wc -c) ] && chars_count=$(($chars_count * 2))
    for i in 1 2 3; do
      echo $message && sleep 1.5 && printf "%${chars_count}s\n" " " && sleep 1.5
    done
  fi
}

main
