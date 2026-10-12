#!/bin/bash
SERVICE="cron"
if ! systemctl is-active --quiet "$SERVICE"; then
  echo "ALERTE: $SERVICE n'est pas actif"
else
  echo "OK: $SERVICE est actif"
fi
