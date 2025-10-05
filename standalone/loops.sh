#!/bin/sh

func_header() {
    echo
    echo "===  $1  ==="
}


loop_over_items_ifs() {
    func_header "loop_over_items_ifs()"
    items="foo_1,foo_2,foo_3"
    old_ifs="$IFS"
    IFS=',' # Set separator
    for item in $items; do
        echo "-> $item <-" # do something with it
    done
    IFS="$old_ifs" # Restore original IFS
}

loop_over_items_set_custom_ifs() {
    func_header "loop_over_items_set_custom_ifs()"
    items="New York,San Francisco,Los Angeles"
    old_ifs="$IFS"
    IFS=','
    #  shellcheck disable=SC2086  # quoting should not be used here
    set -- $items
    for item; do
        echo "Item: [$item]"
    done
    IFS="$old_ifs" # Restore original IFS
}

primitive_loop() {
    # solid POSIX, a bit longer but guaranteed to work, again assuming sep
    # isn't in list
    func_header "primitive_loop()"
    sep=":"
    items="$PATH"
    while :; do
	case $items in
            *"$sep"*)
		item=${items%%"$sep"*}
		items=${items#*"$sep"}
		;;
            *)
		item=$items
		items=
		;;
	esac
	printf 'Item: [%s]\n' "$item"
	[ -z "$items" ] && break
    done
}

loop_over_items_ifs
loop_over_items_set_custom_ifs
primitive_loop
