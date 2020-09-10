# fontlist
def fontlist
  puts "Font List"
  puts "inter"
  puts "roboto-mono"
end

if font == "inter" then
  zipname="roboto-mono.zip"
  downloadfile="https://fonts.google.com/download?family=Roboto+Mono"
  fontname="Roboto_Mono"
  expanddir="Roboto_Mono/static"
end

if font == "roboto-mono" then
  zipname="inter.zip"
  downloadfile="https://fonts.google.com/download?family=Inter"
  fontname="Inter"
  expanddir="Inter/static"
end
