Dir[File.join(__dir__, '*_r', '*.rb')].each { |file| require file }
Dir[File.join(__dir__, '*_r_m', '*.rb')].each { |file| require file }

def networking_m(url, ip)
  puts "[!] networking module init: #{url}"

  ping_r url
  nmap_r ips
end