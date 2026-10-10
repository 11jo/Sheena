@echo off
copy Sheena\Sound\*.* override\*.*
cd override
oggdec K#Sheena.ogg
del K#Sheena.ogg
oggdec K#Sheen1.ogg
del K#Sheen1.ogg
del oggdec.exe
cd ..
