>.vimrc of vim for debian squeeze
###### 
###### 
###### 
>_let terminator supports 256 colors if it does_
###### 
>_get the detail at <http://vim.wikia.com/wiki/256_colors_in_vim>_
###### 
>_add the following to ~/.profile_

` if [ -e /usr/share/terminfo/x/xterm-256color ]; then
		export TERM='xterm-256color'
 else
		export TERM='xterm-color'
 fi`
