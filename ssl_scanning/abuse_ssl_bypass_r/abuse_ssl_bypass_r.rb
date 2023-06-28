def abuse_ssl_bypass(url, regex)
  puts `cat ~/tools/dedxcanner/ssl_scanning/abuse_ssl_bypass_r/banner.txt`
  puts "[!] using abuse_ssl_bypass"

  if !regex
    puts "[-] regex not found"
    return
  end

  puts `python3.8 abuse-ssl-bypass-waf.py -regex #{regex} -target #{url} | tee -a ~/tools/dedxcanner/outputs/ssl_scanning/abuse_ssl_bypass.out`
end