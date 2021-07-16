#!/bin/bash
SINK_INDEX1=1
SINK_INDEX2=0
ACTIVE_SINK=$(pacmd list-sinks | grep '* index:' | grep -o '[0-9]*')
if [ "$ACTIVE_SINK" = $SINK_INDEX1 ] ; then
    pacmd set-default-sink $SINK_INDEX2
    pacmd list-sink-inputs | awk '/index:/{print $2}' | xargs -r -I{} pacmd move-sink-input {} $SINK_INDEX2
else 
    pacmd set-default-sink $SINK_INDEX1
    pacmd list-sink-inputs | awk '/index:/{print $2}' | xargs -r -I{} pacmd move-sink-input {} $SINK_INDEX1
fi
