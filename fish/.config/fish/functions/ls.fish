function ls
	set program "eza"
	# Fallback to ls if eza is not installed
	if not command -sq $program
		set program "ls"
	end

	command $program --color=auto --group-directories-first $argv
end
