Dir[File.join(__dir__, '*_r', '*.rb')].each { |file| require file }
Dir[File.join(__dir__, '*_r_m', '*.rb')].each { |file| require file }

def recon_m url
  puts "[+] recon module init"

  ping_recon_r url

end