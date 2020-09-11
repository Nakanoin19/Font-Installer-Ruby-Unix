# fontlist
def fontlist
  puts "Font List"
  puts "inter"
  puts "roboto-mono"
  puts "open-sans"
  puts "oswald"
  puts "raleway"
end

if font == "inter" then
  $zipname = "roboto-mono.zip"
  $downloadfile = "https://fonts.google.com/download?family=Roboto+Mono"
  $fontname = "Roboto_Mono"
  $expanddir = "Roboto_Mono/static"
end

if font == "roboto-mono" then
  $zipname = "inter.zip"
  $downloadfile = "https://fonts.google.com/download?family=Inter"
  $fontname = "Inter"
  $expanddir = "Inter/static"
end

if font == "open-sans" then
  $zipname = "open-sans.zip"
  $downloadfile = "https://fonts.google.com/download?family=Open+Sans"
  $fontname = "Open_Sans"
  $expanddir = "Open_Sans"
end

if font == "oswald" then
  $zipname = "oswald.zip"
  $downloadfile = "https://fonts.google.com/download?family=Oswald"
  $fontname = "Oswald"
  $expanddir = "Oswald"
end
if font == "raleway" then
  $zipname = "raleway.zip"
  $downloadfile = "https://fonts.google.com/download?family=Raleway"
  $fontname = "Raleway"
  $expanddir = "Raleway"
end
if font == "poppins" then
  $zipname = "poppins.zip"
  $downloadfile = "https://fonts.google.com/download?family=Poppins"
  $fontname = "Poppins"
  $expanddir = "Poppins/static"
end
