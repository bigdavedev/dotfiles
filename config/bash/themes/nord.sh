
function colour_scheme_nord() {
	local -r nord00="2E/34/40"
	local -r nord01="3B/42/52"
	local -r nord02="43/4C/5E"
	local -r nord03="4C/56/6A"
	local -r nord04="D8/DE/E9"
	local -r nord05="E5/E9/F0"
	local -r nord06="EC/EF/F4"
	local -r nord07="8F/BC/BB"
	local -r nord08="88/C0/D0"
	local -r nord09="81/A1/C1"
	local -r nord10="5E/81/AC"
	local -r nord11="BF/61/6A"
	local -r nord12="D0/87/70"
	local -r nord13="EB/CB/8B"
	local -r nord14="A3/BE/8C"
	local -r nord15="B4/8E/AD"

	if [ -n "$TMUX" ]; then
		# Tell tmux to pass the escape sequences through
		# (Source: http://permalink.gmane.org/gmane.comp.terminal-emulators.tmux.user/1324)
		local -r printf_template='\033Ptmux;\033\033]4;%d;rgb:%s\033\033\\\033\\'
		local -r printf_template_var='\033Ptmux;\033\033]%d;rgb:%s\033\033\\\033\\'
		local -r printf_template_custom='\033Ptmux;\033\033]%s%s\033\033\\\033\\'
	else
		local -r printf_template='\033]4;%d;rgb:%s\033\\'
		local -r printf_template_var='\033]%d;rgb:%s\033\\'
		local -r printf_template_custom='\033]%s%s\033\\'
	fi

	# 16 color space
	printf $printf_template 0  $nord01
	printf $printf_template 1  $nord11
	printf $printf_template 2  $nord14
	printf $printf_template 3  $nord13
	printf $printf_template 4  $nord09
	printf $printf_template 5  $nord15
	printf $printf_template 6  $nord08
	printf $printf_template 7  $nord05
	printf $printf_template 8  $nord03
	printf $printf_template 9  $nord11
	printf $printf_template 10 $nord14
	printf $printf_template 11 $nord13
	printf $printf_template 12 $nord09
	printf $printf_template 13 $nord15
	printf $printf_template 14 $nord07
	printf $printf_template 15 $nord06

	# 256 nord space
	printf $printf_template 16 $nord16
	printf $printf_template 17 $nord17
	printf $printf_template 18 $nord18
	printf $printf_template 19 $nord19
	printf $printf_template 20 $nord20
	printf $printf_template 21 $nord21

	printf $printf_template_var 10 $nord04 # foreground
	printf $printf_template_var 11 $nord00 # background
	printf $printf_template_custom 12 ";7" # cursor (reverse video)
}
