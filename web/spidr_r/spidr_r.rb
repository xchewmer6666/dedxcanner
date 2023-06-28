require 'spidr'

def spidr_r url
  puts `cat ~/tools/dedxcanner/web/spidr_r/banner.txt`
  puts "[!] using spidr gem for web crawling"

  url_map = Hash.new { |hash,key| hash[key] = [] }
  every_url_list = []

  begin
    `rm -rf ./outputs/web/spidr_r*.out`
    file = File.open("./outputs/web/spidr_r.out", "a")
    file2 = File.open("./outputs/web/spidr_r2.out", "a")
    Spidr.start_at(url) do |spider|
      spider.every_url { |url| file.puts url  }
      spider.every_link do |origin,dest|
        file2.puts "dest: #{dest}, origin: #{origin}"
      end
    end
  rescue IOError => e
    #some error occur, dir not writable etc.
    puts e
  ensure
    file.close unless file.nil?
  end
end