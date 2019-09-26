require 'dotenv/load'
require 'httparty'

urls = %W[http://ip-api.com/json https://api.ipgeolocation.io/ipgeo?apiKey=#{ENV['IP_GEO_KEY']}]

urls.each do |url|
  begin
    geo_info = HTTParty.get(url).parsed_response

    if geo_info
      geo_info['server-name'] = `hostname`.strip
      geo_info['datetime'] = Time.now.utc.to_s
      puts geo_info
      File.open('/home/matt/source/scripts/geocommit/locations.txt', 'a+') { |f| f.puts "#{geo_info}," }
      break
    end
  rescue => e
    p e
  end
end