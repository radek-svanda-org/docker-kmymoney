docker run \
    --rm \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v /home/radek/OneDrive/Dokumenty/Finance/Rodina:/kmy \
    -e DISPLAY=:1 \
    -e QT_X11_NO_MITSHM=1 \
    kmymoney:5.0 \
    kmymoney
