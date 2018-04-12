#!/bin/bash
export uid=$UID
export gid=`id -g $USER`
docker-compose up -d
