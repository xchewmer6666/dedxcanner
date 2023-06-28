def pagodo_r url
  puts `cat ~/tools/dedxcanner/web/wad_r/banner.txt`
  puts "[!] using pagodo to recon with google dorks"

  puts `python3.8 ~/tools/pagodo/pagodo.py -d #{url} -g ./dorks/all_google_dorks.txt | tee -a ~/tools/dedxcanner/outputs/web/dorking/pagodo.out`
end