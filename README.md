# scripts
Some shell and ruby scripts I've written in order to make work a little more streamlined.

gitcommit.sh - Top earner, adds all changed files to the commit and then prepends the name of your branch to to your commit message. Usually aliased to `gc`

geocommit.rb - Get location based on IP, write it to a file. Runs after gitcommit.sh whenever I make a commit.  Going to do something fun with this information in the the future.

parallel_spec_8.sh - Sets up elasticsearch to work with parallels, then runs specs in parallel to speed things up.

rspec_pre/pos.rb & rspec.sh - Changes a config line in secrets.yml so that tests can actually access the elasticsearch searvice on the default port.

vpn.sh - Just runs the vpn profile, looking at this it can probably JUST be a shell alias.
