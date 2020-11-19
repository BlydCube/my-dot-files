function echo_color
    set_color $argv[1]
    echo $argv[2..-1]
    set_color normal
end
