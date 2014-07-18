#!/bin/bash

function start() {
    hugo server --theme=herring-cove  --verboseLog=true  --logFile=TimeCapsule/log/timecapsule.log  --baseUrl=http://chenmeilin.com -p 80 -s TimeCapsule
}

function stop() {

}

case C"$1" in
    Cstart)
        start
    Cstop)
        stop
    Crestart)
        restart
esac
