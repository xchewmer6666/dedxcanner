require 'optparse'
require_relative 'tech_detection_phase.rb'
require_relative 'networking/networking_m.rb'

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
  end.parse!

  # node_wap options[:url]
  if options[:networking] and options[:url]
    networking_m(options[:url])
  end
end

main