#!/usr/bin/env bash
cd ~/source/springbig

ruby ~/scripts/rspec_prep.rb

bundle exec rspec ${1}

ruby ~/scripts/rspec_post.rb

