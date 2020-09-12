# fontlist
def fontlist
  puts "Font List"
  puts "inter"
  puts "roboto-mono"
  puts "open-sans"
  puts "oswald"
  puts "raleway"
  puts "poppins"
  puts "pt-sans"
  puts "merriweather"
  puts "jost"
end

if font == "inter" then
  $zipname = "roboto-mono.zip"
  $downloadfile = "https://fonts.google.com/download?family=Roboto+Mono"
  $fontname = "Roboto_Mono"
  $expanddir = "Roboto_Mono/static"
elsif font == "roboto-mono" then
  $zipname = "inter.zip"
  $downloadfile = "https://fonts.google.com/download?family=Inter"
  $fontname = "Inter"
  $expanddir = "Inter/static"
elsif font == "open-sans" then
  $zipname = "open-sans.zip"
  $downloadfile = "https://fonts.google.com/download?family=Open+Sans"
  $fontname = "Open_Sans"
  $expanddir = "Open_Sans"
elsif font == "oswald" then
  $zipname = "oswald.zip"
  $downloadfile = "https://fonts.google.com/download?family=Oswald"
  $fontname = "Oswald"
  $expanddir = "Oswald"
elsif font == "raleway" then
  $zipname = "raleway.zip"
  $downloadfile = "https://fonts.google.com/download?family=Raleway"
  $fontname = "Raleway"
  $expanddir = "Raleway"
elsif font == "poppins" then
  $zipname = "poppins.zip"
  $downloadfile = "https://fonts.google.com/download?family=Poppins"
  $fontname = "Poppins"
  $expanddir = "Poppins/static"
elsif font == "pt-sans" then
  $zipname = "pt-sans.zip"
  $downloadfile = "https://fonts.google.com/download?family=PT+Sans"
  $fontname = "PT_Sans"
  $expanddir = "PT_Sans/static"
elsif font == "merriweather" then
  $zipname = "merriweather.zip"
  $downloadfile = "https://fonts.google.com/download?family=Merriweather"
  $fontname = "Merriweather"
  $expanddir = "Merriweather/static"
elsif font === "jost" then
  $zipname = "jost.zip"
  $downloadfile = "https://fonts.google.com/download?family=Jost"
  $fontname = "Jost"
  $expanddir = "Jost/static"
end
