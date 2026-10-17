#!/bin/bash
# Verification simple de services critiques
for SERVICE in ssh cron notaservice; do
  echo "Verification du service $SERVICE"
  if systemctl is-active --quiet "$SERVICE"; then
    echo "OK: $SERVICE est actif"
  else
    echo "ALERTE: $SERVICE n'est pas actif"
  fi
  echo "---"
done
