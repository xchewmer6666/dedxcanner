def wad_r url
  puts `cat ~/tools/dedxcanner/web/wad_r/banner.txt`
  puts "[!] using wad to detect technologies"

  puts `wad -u #{url} | tee -a ~/tools/dedxcanner/outputs/web/wad.out`
end