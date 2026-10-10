@echo off

Echo Copying TIZ files to override
copy Sheena\Areas\*.* override\*.*
cd override

Echo Uncompressing TIZ files
tisunpack -f K#1000.tiz
tisunpack -f K#1001.tiz

Echo Delete the TIZ files
del K#1000.tiz
del K#1001.tiz

del tisunpack.exe
