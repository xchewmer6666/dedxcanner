Dir[File.join(__dir__, '*_r', '*.rb')].each { |file| require file }

def dorking_r_m url
  puts "[+] dorking sub-module init"

  pagodo_r url
  
end