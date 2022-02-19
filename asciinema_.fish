asciinema rec (if set -q argv[2]
    echo -c "$argv[2..-1]"
) (mktemp --tmpdir=$HOME/$argv[1] tmp.XXXXXXXX-ascii.cast)
