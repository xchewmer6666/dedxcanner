require 'net/ping'

def ping_r host
  check = Net::Ping::External.new(host)
  puts check.ping?
end