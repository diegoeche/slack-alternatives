#!/bin/bash
docker-compose -f rocketchat.yml up
docker-compose -f mattermost.yml up
docker-compose -f letschat.yml up
