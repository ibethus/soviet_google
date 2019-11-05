#!/bin/bash

prog=$(which xclock)
pid_file=/tmp/$USER.pid

function do_start {
    $prog -update 1 &
    echo $! > $pid_file
}
function do_stop {
    kill -9 $(cat $pid_file)
}
function print_usage {
    echo "usage: pendule {start|stop|usage|restart}"
}

case "$1" in
start)
    do_start ;;
stop)
    do_stop ;;
restart)
    do_stop
    do_start ;;
usage)
    print_usage ;;
*)
    print_usage
    exit 1 ;;
esac
