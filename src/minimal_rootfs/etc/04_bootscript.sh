#!/bin/sh

# Autorun functionality
if [ -d /etc/autorun ] ; then
for AUTOSCRIPT in /etc/autorun/*
  do
    if [ -f "$AUTOSCRIPT" ] && [ -x "$AUTOSCRIPT" ]; then
      echo -e "Executing \\e[32m$AUTOSCRIPT\\e[0m in subshell."
      $AUTOSCRIPT
    fi
  done
fi

