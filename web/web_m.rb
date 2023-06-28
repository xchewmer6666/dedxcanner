Dir[File.join(__dir__, '*_r', '*.rb')].each { |file| require file }
Dir[File.join(__dir__, '*_r_m', '*.rb')].each { |file| require file }

def web_m url
  puts "[+] web module init"

  node_wap url
  spidr_r url
  wad_r url
  adfind_r url

  # can add concurrency with bash or threading
  # dorking_r_m url

  
end