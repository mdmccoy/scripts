filepath = "/home/matt/source/springbig/config/secrets.yml"

IO.write(filepath, File.open(filepath) { |f| f.read.gsub('<%= 9250 +','<%= 9200 +')} )