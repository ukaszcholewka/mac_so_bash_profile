# .bash_profile
### File that help you with your work on macOS.
You can use this file however you like.

### Feel free to contribute.
Don't forget to put source in `.bash_profile` and features in `README.md`  Keep `update_bash` command at the end of file.

## How to use
1. Download `.bash_profile` and put it in your home dir or run  `curl https://raw.githubusercontent.com/ukaszcholewka/mac_so_bash_profile/master/.bash_profile -o ~/.bash_profile`. Warning, this command will overwrite existing file.
2. Reload file using `source ~/.bash_profile` command.

## Features
1. Colors
2. Commands
3. Git autocomplete
4. `reload_bash` command for future updates
5. `update_bash` command for downloading current version of file. Warning, autoupdate is enabled

### Commands
`ll` Alias to `ls -la`  
`gh` GUI git log in console  
`targz ./$file` make tar.gz from $file  
`untargz ./$file` will unpack tar.gz  
`mkcd $dirName` will create dir and cd into  


### Updating
If you want to disable auto updates, find and delete line with `update_bash` command (probably at the end of file). To avoid overlap, changes will apply in next session.
