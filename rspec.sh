#!/usr/bin/env bash
cd ~/source/springbig

ruby ~/source/scripts/rspec_prep.rb

bundle exec rspec ${1}

ruby ~/source/scripts/rspec_post.rb

