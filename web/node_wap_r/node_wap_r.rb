require 'open3'

def node_wap url
  puts `cat ~/tools/dedxcanner/web/node_wap_r/banner.txt`
  puts "[!] nodejs wappalyzer init for detection of technologies. \noutput file: ~/tools/dedxcanner/outputs/node_wap.out"
  
  cmd = "node ./nodejs_apps/wappalyzer_phase.js -u #{url}"
  res = ""
  Open3.popen3(cmd) do |stdout, stderr, status, thread|
    while line = stderr.gets do
      puts line
      res << line
    end

    begin
      file = File.open("./outputs/web/node_wap.out", "w")
      file.write(res) 
    rescue IOError => e
      #some error occur, dir not writable etc.
      puts e
    ensure
      file.close unless file.nil?
    end

  end
end