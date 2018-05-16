function fish_postexec --on-event fish_postexec
	just $argv; and test -d $argv; and l
end
 
