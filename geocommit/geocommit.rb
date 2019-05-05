require 'httparty'

url = 'http://ip-api.com/json'
file = '/home/matt/source/scripts/geocommit/locations.txt'

geo_info = HTTParty.get(url).parsed_response

geo_info['datetime'] = Time.now.utc.to_s

puts geo_info

File.open(file, 'a+') { |f| f.puts "#{geo_info}," }