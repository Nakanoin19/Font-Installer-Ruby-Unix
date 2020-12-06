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
  case os
    when 1 then
      $installdir = 'C:/windows/fonts'
    when 2 then
      $installdir = '/usr/share/fonts/#{fontname}'
    when 3 then
      puts "Enter the directory where you want to store the installed font files (if you need to create a directory of font names downstairs, use \#\{fontname\} for the font name)(change the path separator '\' to '/'.)"
      print ">"
      $installdir = gets.chomp
    else
      puts "Error"
      exit
  end
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
# commands
welcome
selectos
download_unzip
file
