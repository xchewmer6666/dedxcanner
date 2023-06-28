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

  recon_m options[:url]

  if options[:networking] and options[:url]
    networking_m options[:url]
  end

  if options[:web] and options[:url]
    web_m options[:url]    
  end
end

main