set -g solid_char "─"
set -g dotted_char "╌"

function detect_char
	if any $argv
		switch $argv
			case solid
				echo $solid_char
			case dotted
				echo $dotted_char
			case '*'
				echo $argv
		end
	else
		echo $solid_char
	end
end

function hr
	set char (detect_char $argv)
	set_color 333
	for i in (seq (math $COLUMNS - 1)); echo -n "$char"; end;
	set_color normal
	echo
end
