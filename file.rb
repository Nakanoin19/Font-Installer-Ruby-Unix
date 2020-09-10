require 'FileUtils'

FileUtils.mkdir(installdir)
FileUtils.mv(expanddir + "/*", installdir)
FileUtils.rm_r(fontname)
FileUtils.rm(zipname)
