#!/bin/bash

sudo docker run -d=true --privileged=true -h sinusbot --name=sinusbot --restart=always -p=8087:8087/tcp -v=/app/sinusbot:/sinusbot/data art567/sinusbot /start
