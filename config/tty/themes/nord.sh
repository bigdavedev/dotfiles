
function colour_scheme_nord() {
	local -r nord00="2E3440"
	local -r nord01="3B4252"
	local -r nord02="434C5E"
	local -r nord03="4C566A"
	local -r nord04="D8DEE9"
	local -r nord05="E5E9F0"
	local -r nord06="ECEFF4"
	local -r nord07="8FBCBB"
	local -r nord08="88C0D0"
	local -r nord09="81A1C1"
	local -r nord10="5E81AC"
	local -r nord11="BF616A"
	local -r nord12="D08770"
	local -r nord13="EBCB8B"
	local -r nord14="A3BE8C"
	local -r nord15="B48EAD"

	# 16 color space
	echo -en "\e]P0${nord01}"
	echo -en "\e]P1${nord11}"
	echo -en "\e]P2${nord14}"
	echo -en "\e]P3${nord13}"
	echo -en "\e]P4${nord09}"
	echo -en "\e]P5${nord15}"
	echo -en "\e]P6${nord08}"
	echo -en "\e]P7${nord05}"
	echo -en "\e]P8${nord03}"
	echo -en "\e]P9${nord11}"
	echo -en "\e]PA${nord14}"
	echo -en "\e]PB${nord13}"
	echo -en "\e]PC${nord09}"
	echo -en "\e]PD${nord15}"
	echo -en "\e]PE${nord07}"
	echo -en "\e]PF${nord06}"

	## In Linux TTY we need to clear the screen so we don't see
	## all the escape sequences get printed...
	clear
}
