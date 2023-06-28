def nmap_r url
  puts `cat ~/tools/dedxcanner/web/adfind_r/banner.txt`
  puts "[!] using adfind to find admin pages"

  puts `adfind -u #{url} | tee -a ~/tools/dedxcanner/outputs/web/adfind.out`
end