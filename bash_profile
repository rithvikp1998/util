function setColors {
	local green_bold="\[\033[1;32m\]"
	local purple_bold="\[\033[1;35m\]"
	local reset_color="\[\e[00m\]"

	export PS1="\n $green_bold\u @ \w\n$purple_bold -> $reset_color"
}

setColors
