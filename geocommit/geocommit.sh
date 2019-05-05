#!/usr/bin/env bash
curl -s http://ip-api.com/json | tee -a ~/source/scripts/geocommit/locations.txt && echo -e "," >> ~/source/scripts/geocommit/locations.txt
