require 'net/http'

example = Net::HTTP.get('www.google.com', '/')

File.open('test.html', 'w') do |line|
  line.puts(example)
end