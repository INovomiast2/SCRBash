#!/bin/bash

CROOT="/tmp/cachelighttpd/"
DAYS=10
LUSER="lighttpd"
LGROUP="lighttpd"

#Empezar la Limpieza
/usr/bin/find ${CROOT} -type f -mtime +${DAYS} | xargs -r /bin/rm

if [ ! -d $CROOT ] ; then
    /bin/mkdir -p $CROOT
    /bin/chown ${LUSER}:${LGROUP} ${CROOT}
fi

#Script by: INovomiast