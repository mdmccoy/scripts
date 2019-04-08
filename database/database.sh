#!/bin/bash

cd ~/source/springbig

echo "rake db:migrate..."

rake db:migrate

echo "rake parallel:prepare..."

rake parallel:prepare
