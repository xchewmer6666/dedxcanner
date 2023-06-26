require 'open3'

def node_wap url
  cmd = "node ./nodejs_apps/wappalyzer_phase.js -u #{url}"
  res = ""
  Open3.popen3(cmd) do |stdout, stderr, status, thread|
    while line = stderr.gets do
      puts line
      res << line
    end

    begin
      file = File.open("./outputs/node_wap.out", "w")
      file.write(res) 
    rescue IOError => e
      #some error occur, dir not writable etc.
      puts e
    ensure
      file.close unless file.nil?
    end

  end
end