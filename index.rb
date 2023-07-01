require 'optparse'

Dir[File.join(__dir__, '*', '*.rb')].each { |file| require file }

def banner
  logo = `cat logo.txt`
  puts logo
end

def main
  banner
  
  options = {}
  OptionParser.new do |opt|
    opt.on('--url URL') { |o| options[:url] = o }
    opt.on('--networking NETWORKING') { |o| options[:networking] = o }
    opt.on('--web WEB') { |o| options[:web] = o }
  end.parse!

  url_spl_scheme = options[:url].split(/http.?:\/\//)
  url_spl_www = options[:url].split()

  if url_spl_scheme.length == 2
    puts "[+] url_spl_scheme: #{url_spl_scheme}"
    puts "[+] url_spl_www: #{url_spl_www}"
    recon_m url_spl_scheme[1]
  else
    recon_m options[:url]
  end

  target_ip = `cat '/Users/xchewmer/tools/dedxcanner/outputs/target_ip.out'`
  puts "[!] target ip is: #{target_ip}"

  if options[:networking] and options[:url]
    networking_m(options[:url], target_ip)
  end

  if options[:web] and options[:url]
    web_m options[:url]    
  end

end

main