print "It'll install 'FileUtils'. Is that alright?[Y/n]"
yn1 = gets.chomp
case yn1 
  when /^[Yy]/
    system('gem install fileutils')
end

print "It'll install 'Rubyzip'. Is that alright?[Y/n]"
yn2 = gets.chomp
case yn2
  when /^[Yy]/
    system('gem install rubyzip')
end

print "It'll install 'OpenUri'. Is that alright?[Y/n]"
yn3 = gets.chomp
case yn3
  when /^[Yy]/
    system('gem install rubysl-open-uri')
end
