#!/bin/bash

MRTG_USER=${MRTG_USER:-nobody}
MRTG_USERID=${MRTG_USERID:-99}
MRTG_GROUP=${MRTG_GROUP:-users}
MRTG_GROUPID=${MRTG_GROUPID:-100}

getent group ${MRTG_GROUP} 2>&1 > /dev/null || groupadd -g ${MRTG_GROUPID} ${MRTG_GROUP}
getent passwd ${MRTG_USER} 2>&1 > /dev/null && usermod -d /mrtg -s /bin/bash ${MRTG_USER}
getent passwd ${MRTG_USER} 2>&1 > /dev/null || useradd -d /mrtg -g ${MRTG_GROUP} -G users -u ${MRTG_USERID} -s /bin/bash ${MRTG_USER}

su -l ${MRTG_USER} -c "/usr/bin/mrtg /config/mrtg.cfg" 

