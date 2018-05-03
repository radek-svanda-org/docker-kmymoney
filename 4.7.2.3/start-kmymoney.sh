#!/bin/sh

echo "creating new $USER with UID $USERID"
useradd -m $USER -u $USERID && \
cd /home/$USER && \
su $USER -c kmymoney