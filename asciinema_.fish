asciinema rec (if set -q argv[2]
    string join \n -- -c "$argv[2..-1]"
end) (mktemp --tmpdir=$HOME/$argv[1] tmp.XXXXXXXX-ascii.cast)
