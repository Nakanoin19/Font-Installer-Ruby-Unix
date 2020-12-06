# setup
require 'Fileutils'
require 'zip'
require 'open-uri'
require './utils/file'
require './utils/font'
require './utils/help'

$allfile = "/*"
$installdir = '/usr/share/fonts/#{fontname}'

if ARGV[0] == nil then
  fontlist
  puts "Please select the font you want to install from the list above."
  print ">"
  $font = gets.chomp
elsif ARGV[0] == "--help" then
  help
  exit
elsif ARGV[1] == "--help" then
  help
  exit
else
  $font = ARGV[0]
end

def welcome
  puts "Welcome to Font Installer!!"
end 

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

def file
  FileUtils.mkdir_p(installdir + fontname)
  FileUtils.mv(expanddir + allfile, installdir + fontname)
  FileUtils.rm_r(fontname)
  FileUtils.rm(zipname)
end
# commands
welcome
selectos
download_unzip
file
