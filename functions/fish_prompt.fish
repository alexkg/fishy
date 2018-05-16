function fish_prompt
	git status > /dev/null ^ /dev/null # refresh
	set -l BRANCH (what branch)
	if any $BRANCH
		if not git diff-index --quiet HEAD --
			set BRANCH "! $BRANCH"
		end
	end
	hr
	echo
	set_color 9e9
	set -l FOLDER (echo $PWD | sed -e "s|^$HOME|~|")
	echo -n $FOLDER
	for i in (seq (math $COLUMNS - 1 - (length-of $FOLDER) - (length-of $BRANCH))); echo -n " "; end;
	echo -n $BRANCH
	echo
	echo "> "
end
