#!/usr/bin/env bash
cd ~/source/springbig

rake "elasticsearch:parallel:setup_data_paths"

rake "parallel:spec[6]"
