function e
	switch (count $argv)
	case 0
		e0 $argv
	case 1
		e1 $argv
	case '*'
		eN $argv
	end
end

function e0
	e1 .
end

function e1
	if test -f $argv
		e1f $argv
	else if test -d $argv
		e1d $argv
	end
end

function e1f
	subl -n $argv
end

function e1d
	set folder $argv
	if any $folder/*.sublime-project
		subl --project $folder/*.sublime-project
	# else if any $folder/.sublime-project
	# 	subl --project $folder/.sublime-project
	else
		subl $folder/
	end
end

function eN
	for arg in $argv
		e1 $arg
	end
end
