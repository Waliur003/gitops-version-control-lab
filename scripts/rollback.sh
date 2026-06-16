#!/bin/bash

echo "Starting rollback simulation..."
echo "Checking previous Git commit..."
git log --oneline -5

echo "Rollback should be performed using git revert or git reset depending on scenario."
echo "Rollback simulation completed."
