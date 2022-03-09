#
# These are very common and useful
#
function ll --description "List contents of directory using long format"
	# Show each file's git status when using exa
	if command -qs exa
		set git "--git"
	end

    ls -lg --time-style long-iso $git $argv
end
