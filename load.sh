#!/bin/bash

function start() {
    nohup hugo server --theme=herring-cove  --verboseLog=true  --logFile=TimeCapsule/log/timecapsule.log  --baseUrl=http://chenmeilin.com -w -p 80 -s TimeCapsule &
}

function stop() {
	killall -9 hugo
}

function restart() {
	stop && sleep 1
	start
}

case C"$1" in
    Cstart)
        start
    Cstop)
        stop
    Crestart)
        restart
esac
