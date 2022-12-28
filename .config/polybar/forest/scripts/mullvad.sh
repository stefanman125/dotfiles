#!/bin/bash

if /usr/bin/mullvad status | grep -q "Connected"; then
  echo ""
else
  echo ""
fi
