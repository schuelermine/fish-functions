clear
set_color --background brwhite black
set -l m "Press the ENTER key to exit."
set -l ny (math $LINES - 1)
set -l nx (math $COLUMNS - (string length $m) - 1)
if test $nx -lt 1
    set nx 0 # since x is never 0
end
set -l y 1
while test $y -le $LINES
    set -l x 1
    while test $x -le $COLUMNS
        if contains $x 1 $COLUMNS && contains $y 1 $LINES
            echo -n ┼
        else if contains $x 1 $COLUMNS
            echo -n │
        else if contains $y 1 $LINES
            echo -n ─
        else if test $x = $nx && test $y = $ny
            echo -n $m
            set x (math $x + (string length $m))
            continue
        else
            echo -n " "
        end
        set x (math $x + 1)
    end
    if test $y -lt $LINES
        echo
    end
    set y (math $y + 1)
end
read --prompt-str "" -n 1
clear
