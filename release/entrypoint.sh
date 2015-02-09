#!/bin/bash
[[ "$1" == -* ]] && exec dind docker "$@"

exec dind "$@"

