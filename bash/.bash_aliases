# Add an "fd" alias when "fdfind" is installed
if command -v fdfind >/dev/null 2>&1; then 
    alias fd='fdfind'
fi
