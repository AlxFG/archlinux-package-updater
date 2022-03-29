# archlinux-package-updater
## About this package
This is a personal script meant to periodically update my packages in archlinux and to backup my root directory with timeshift before updating
/
This is ran by placing in my .xinitrc
## Why nelua?
If you are wondering why I am using this obscure language, it is because this script was originally written in lua and even though performace for this script is similar to using luajit, I wanted to just make a single executable without needing to rely on any external programs
## Areas that can be improved
1. Storing user specific data in variables so they can be easily changed
