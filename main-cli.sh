#!/bin/bash

# catch first arguments with $1
case "$1" in
  -kp|--killport)
    . ./bin/kill-port.sh
  ;;

  -z |--zshreload)
    . ./bin/reload-zsh.sh
  ;;

  -n |--npmSetRegistry)
    . ./bin/set-npm-registry.sh
  ;;
  
  -x |--xeasteregg)
    . ./bin/easter-egg.sh
    myecho
  ;;

 *)
  # else
  echo -e "
  Usage:
  
    -kp | --killport
      description: kills processes on desired port number

    -z  | --zshreload
      description: reloads zsh

    -n  | --npmSetRegistry
      description: switch between 'trainline' and 'default' npm registry
    "
  ;;
esac