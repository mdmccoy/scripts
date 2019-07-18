require 'csv'

File.open('/home/matt/source/scripts/output.txt', 'a') do |f|
  f << "("
  CSV.foreach('/home/matt/Downloads/4361_members.csv', headers: true) do |row|
    f << "'#{row['id']}',"
  end
  f << ")"
end
