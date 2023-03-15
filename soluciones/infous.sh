#!/bin/bash

TEMPORAL=`grep "^$1:" /etc/passwd 2>/dev/null`
USUARIO=`echo TEMPORAL | cut -f1 -d:`

echo "Username: $USUARIO"
