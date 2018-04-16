# Useful Bash Things
----

### CheatSheets

[terminal-mac-cheatsheet](https://github.com/0nn0/terminal-mac-cheatsheet/blob/master/README.md)


### Shell Options
http://wiki.bash-hackers.org/internals/shell_options
[set shell options using
shopt](http://wiki.bash-hackers.org/commands/builtin/shopt)

### Pattern matching
http://wiki.bash-hackers.org/syntax/pattern
http://wiki.bash-hackers.org/syntax/pe#substring_removal
https://regexone.com/references/python


`*\(0[3-8]\)*` --> matches any file with (0[3-8])
`*[0-9].jpg`
adding zero // 
```
for f in *-[0-9].jpg; do     mv "$f" ${f/901-/901-0} ; done
```

### Permissions
run script.sh for only current user
``` 
chmod u+x script.sh
```

### Paths

trash=~/.Trash/

## MacOS settings
T/F: show/hide hidden files 
defaults write com.apple.finder AppleShowAllFiles FALSE


