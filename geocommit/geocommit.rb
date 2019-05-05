require 'httparty'

geo_info = HTTParty.get('http://ip-api.com/json').parsed_response

geo_info['datetime'] = Time.now.utc.to_s

puts geo_info

File.open('locations.txt', 'a+') { |f| f.puts "#{geo_info}," }