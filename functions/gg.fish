function gg
	git add -A
	if any $argv
		git commit -m "$argv"
	else
		git commit
	end
end
