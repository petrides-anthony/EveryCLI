#!/bin/bash

echo "Port to destroy?"
  read port
  sudo kill -9 $(sudo lsof -t -i:$port)
  echo "port $port has been destroyed."
  say "port $port has been destroyed."