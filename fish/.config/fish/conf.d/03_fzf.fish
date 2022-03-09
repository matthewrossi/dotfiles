# Fuzzy finder

# Use fd when it is installed
if command -sq fd; or command -sq fdfind
    set -gx FZF_DEFAULT_COMMAND 'fd --type f'
end
# Use Nord color scheme
set -agx FZF_DEFAULT_OPTS '
--color fg:#D8DEE9,bg:#2E3440,hl:#A3BE8C,fg+:#D8DEE9,bg+:#434C5E,hl+:#A3BE8C
--color pointer:#BF616A,info:#4C566A,spinner:#4C566A,header:#4C566A,prompt:#81A1C1,marker:#EBCB8B'
