#!/bin/bash

# submenu
  local PS3='Please enter sub option: '
  local options=("Sub menu item 1" "Sub menu item 2" "Sub menu quit")
  local opt
  select opt in "${options[@]}"
  do
      case $opt in
          "Sub menu item 1")
              echo "you chose sub item 1"
              ;;
          "Sub menu item 2")
              echo "you chose sub item 2"
              ;;
          "Sub menu quit")
              return
              ;;
          *) echo "invalid option $REPLY";;
      esac
  done