function fd --description "Alias of the fdfind program when it exists"
    set program "fdfind"
    # Fallback to fd if fdfind is not installed
    if not command -sq $program
        set program "fd"
    end

    command $program $argv
end
