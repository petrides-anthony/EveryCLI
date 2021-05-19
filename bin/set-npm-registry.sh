#!/bin/bash

echo "Please enter desired npm registry: (trainline/ default)"
  read SELECTION

  if [[ $SELECTION = "trainline" ]]; then
    npm set registry "https://artifactory.trainline.tools/artifactory/api/npm/npm-virtual"
    echo "You have set your npm registry to: "
    npm get registry
  elif [[ $SELECTION = "default" ]]; then 
    npm set registry "https://registry.npmjs.org/"
    echo "You have set your npm registry to: "
    npm get registry
  else
    echo "Please enter either trainline or default."
  fi