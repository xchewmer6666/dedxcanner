require_relative './abuse_ssl_bypass_r/abuse_ssl_bypass_r.rb'

def ssl_m(url, regex)
  puts "[+] ssl module init"

  abuse_ssl_bypass(url, regex)
  
end