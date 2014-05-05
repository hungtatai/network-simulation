
require './var.rb'

FileUtils.mkdir_p("upload-file")

M = 1024**2
out_file = "upload-file/file_100M.in"

File.open(out_file, "wb") do |f|
  f.write( "0"*100*M )
end

puts "Size: #{File.size(out_file).to_filesize}"