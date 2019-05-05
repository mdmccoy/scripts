#!/usr/bin/env bash
cd ~/source/springbig

ruby ~/source/scripts/rspec/rspec_prep.rb

bundle exec rspec ${1}

ruby ~/source/scripts/rspec/rspec_post.rb

