function setColors {
	local green_bold="\[\033[1;32m\]"
	local purple_bold="\[\033[1;35m\]"
	local reset_color="\[\e[00m\]"
	local red_bold="\[\e[1;31m\]"

	export PS1="\n $green_bold\u $red_bold@ $green_bold\w\n$purple_bold -> $reset_color"
}

setColors
