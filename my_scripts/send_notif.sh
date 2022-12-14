#!/bin/bash
echo "notify-send '$1'" | at now + $2 minutes
