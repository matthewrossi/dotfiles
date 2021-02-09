#
# These are very common and useful
#
function ll --description "List contents of directory using long format"
    ls -lg --group-directories-first --time-style long-iso --git $argv
end
