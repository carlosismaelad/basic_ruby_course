require 'net/https'

https = Net::HTTP.new('reqres.in', 443)
# para fazer chamadas https
https.use_ssl = true

response = https.get("/api/user")
#  status code
puts response.code
# status message
puts response.message
# body (json)
puts response.body
