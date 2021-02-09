#
# These are very common and useful
#
function la --description "List contents of directory, including hidden files in directory using long format"
    exa -lag --group-directories-first --time-style long-iso --git $argv
end

