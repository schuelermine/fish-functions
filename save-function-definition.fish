function save-function-definition
    functions $argv[1] | fish_indent >~/Code/(set -q argv[2] && echo $argv[2] || echo $argv[1].fish)
end
