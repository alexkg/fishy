function d
	if test -z $argv
		cd
	else if test -f $argv
		cd (dirname $argv)
	else
		cd $argv
	end
	l
end
