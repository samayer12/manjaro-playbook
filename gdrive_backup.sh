#!/bin/bash
# Logging approach from here: https://github.com/rclone/rclone/issues/2259

/usr/bin/rclone copy --update --verbose --transfers 30 --checkers 8 --contimeout 60s --timeout 300s --retries 3 --low-level-retries 10 --stats 1s --log-file=/var/log/rclone_gd.log ~/gdrive remote: 
