function ls
	set program "exa"
	# Fallback to ls if exa is not installed
	if not command -sq $program
		set program "ls"
	end

	command $program --color=auto --group-directories-first $argv
end
