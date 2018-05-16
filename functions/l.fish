function l
	if test -z $argv
		set_color 888
		set_color normal
	end
	ls -AC $argv
end
