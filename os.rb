def selectos
puts "Please select the type of OS you are using."
puts "1) Windows with system files stored on the C drive"
puts "2) Most of Linux"
puts "3) Other"
print "Please enter number. :"
os = gets.to_i

case os
  when 1 then
    installdir = 'C:\windows\fonts'
  when 2 then
    installdir = '/usr/share/fonts/#{fontname}'
  when 3 then
    puts "Enter the directory where you want to store the installed font files (if you need to create a directory of font names downstairs, use \#\{fontname\} for the font name)"
    print ">"
  else
    puts "Error"
    exit
end
end
