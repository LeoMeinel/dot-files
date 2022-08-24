#!/bin/bash

# Start ssh-agent if it is not already started
[ -n "$SSH_AUTH_SOCK" ] || eval "$(ssh-agent -s)"