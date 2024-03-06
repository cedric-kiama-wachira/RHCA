#!/bin/bash

shutdown 02:00 # Shutdownn at 2 AM
shutdown +15   # Shutdown in 15 Minutes
shutdown -r    # Reboot
shutdown now  # Abruptly shutdown
systemctl poweroff # As root user we can use system utility to poweroff the system
shutdown 'About to shutdown the server' # Adding a wall message to inform the users of the system.