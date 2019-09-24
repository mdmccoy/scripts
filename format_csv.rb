require 'csv'

# File.open('/home/matt/source/scripts/output.txt', 'a') do |f|
#   f << "("
#   CSV.foreach('/home/matt/Downloads/4361_members.csv', headers: true) do |row|
#     f << "'#{row['id']}',"
#   end
#   f << ")"
# end

CSV.open('/home/matt/source/springbig/log/errors_parsed.log', 'a+', headers: %w[ml_id date], write_headers: true) do |file|
  CSV.foreach('/home/matt/Downloads/errors.log', headers: true ) do |row|
    p row
    file << %W[#{row['ml_id'].gsub('ML','')} #{row['date'].lstrip}]
  end
end