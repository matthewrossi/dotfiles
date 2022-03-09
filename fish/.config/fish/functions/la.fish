#
# These are very common and useful
#
function la --description "List contents of directory, including hidden files in directory using long format"
	# Show each file's git status when using exa
	if command -qs exa
		set git "--git"
	end

    ls -lag --time-style long-iso $git $argv
end

