require_relative "ping_r/ping_r.rb"

def networking_m(url)
  puts "[!] networking module init: #{url}"

  ping_r url
  puts '[!] bash ping'
  puts `python3.8 ~/tools/dedxcanner/networking/bash_ping_m/bash_ping_r.py --url #{url}`
end