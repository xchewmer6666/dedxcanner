def adfind_r url
  puts `cat ~/tools/dedxcanner/web/adfind_r/banner.txt`
  puts "[!] using adfind to find admin pages"

  puts `sudo nmap -sS -Pn -T4 -p- #{url}`
end