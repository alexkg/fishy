function i
	echo "$PWD..."
	echo
	hr solid
	echo
	l
	if has git
		echo
		hr dotted
		echo
		git status
	end
end
