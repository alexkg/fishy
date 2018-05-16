function g
	if any $argv
		git $argv
	else
		git status
	end
end
