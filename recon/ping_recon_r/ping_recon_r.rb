def ping_recon_r url
  puts `python3.8 ~/tools/dedxcanner/networking/bash_ping_m/bash_ping_r.py --url #{url} --findip true`
end