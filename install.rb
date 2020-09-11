# setup
require 'Fileutils'
require 'zip'
require 'open-uri'
require './utils/file'
require './utils/download-unzip'
require './utils/font'
require './utils/help'

$allfile = "/*"

if ARGV[0] == nil then
  help
  exit
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

def selectos
  puts "Please select the type of OS you are using."
  puts "1) Windows with system files stored on the C drive"
  puts "2) Most of Linux"
  puts "3) Other Windows"
  puts "4) Other"
  print "Please enter number. :"
  os = gets.to_i
  
  case os
    when 1 then
      $installdir = 'C:\windows\fonts'
    when 2 then
      $installdir = '/usr/share/fonts/#{fontname}'
    when 3 then
      puts "Enter the directory where you want to store the installed font files (if you need to create a directory of font names downstairs, use \#\{fontname\} for the font name)"
      print ">"
      $installdir = gets.chomp
      $allfile = allfile.gsub!("/", "\\")
      $expanddir = expanddir.gsub!("/", "\\")
    when 4 then
      puts "Enter the directory where you want to store the installed font files (if you need to create a directory of font names downstairs, use \#\{fontname\} for the font name)"
      print ">"
      $installdir = gets.chomp
    else
      puts "Error"
      exit
  end
end

# commands
welcome
selectos
download_unzip
file
