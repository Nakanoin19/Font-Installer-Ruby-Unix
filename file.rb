def file
  require 'FileUtils'
  
  FileUtils.mkdir_p(installdir + fontname)
  FileUtils.mv(expanddir + "/*", installdir + fontname)
  FileUtils.rm_r(fontname)
  FileUtils.rm(zipname)
end
