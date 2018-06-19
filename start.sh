#!/bin/bash
docker rm -f gravdocs 
docker build . -t grav
docker run -d --name gravdocs -p 8181:80 -v $PWD/data:/var/www/ grav
