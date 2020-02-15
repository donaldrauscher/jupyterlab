#!/bin/bash

if [[ $1 == "start" ]]; then
  NUM_JUPYTER=$(jupyter notebook list | sed 1d | wc -l)
  if [[ $NUM_JUPYTER > 0 ]]; then
    echo "Jupyter server already running!"
    jupyter notebook list | sed 1d
    return
  fi
  echo "Starting Jupyter server..."
  JUPYTER_CONFIG_DIR=. nohup jupyter lab >/dev/null 2>&1 &
  sleep 5
  jupyter notebook list
elif [[ $1 == "stop" ]]; then 
  kill $(pgrep jupyter -u $USER)
else
  echo "usage: $0 (stop) (start)"
fi
