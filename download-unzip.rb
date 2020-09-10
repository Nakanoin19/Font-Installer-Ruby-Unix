def download_unzip
  require 'open-uri'
  require 'zip'
  require 'Fileutils'
  
  FileUtils.mkdir(fontname)
  FileUtils.cd(fontname)
  
  open(downloadfile) do |file|
    open(zipname, "w+b") do |out|
      out.write(file.read)
    end
  end
  
  Zip::InputStream.open(zipname) do |input|
    unzipentry = input.get_next_entry
    Dir.mkdir(File.dirname(unzipentry.name))
    unzipfilename = unzipentry.name
    unzipbuffer = input.read
    File.write(unzipfilename, unzipbuffer)
  end
  
  FileUtils.cd("..")
end
