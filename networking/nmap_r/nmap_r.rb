def nmap_r ip
  puts `cat ~/tools/dedxcanner/networking/nmap_r/banner.txt`
  puts "[!] using nmap to find open ports"
  
  puts `sudo nmap -sS -Pn -T4 -p- #{ip}`
end