function fish_preexec --on-event fish_preexec
	if test -n $argv
		echo ">" (what_command (spread_spread $argv))
	else
		i
	end
	echo
	# [ cd = COMMAND_NAME ]; and i
end
