MESSAGE="$1 new messages, $2 unread"
TITLE="New Mail"
SUBTITLE="$3"

case `uname` in
        Darwin)
        osascript \
        -e "on run(argv)" \
        -e "return display notification item 1 of argv with title item 2 of argv subtitle item 3 of argv" \
        -e "end" \
        -- "$MESSAGE" "$TITLE" "$SUBTITLE"
        ;;
        Linux)
        notify-send $TITLE $MESSAGE &
esac
