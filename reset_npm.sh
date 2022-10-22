#!/usr/bin/bash

npm cache clean --force

npm config rm proxy

npm config rm https-proxy

npm cache verify
