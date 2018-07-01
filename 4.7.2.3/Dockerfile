FROM opensuse:42.1

RUN zypper --non-interactive install \
    kmymoney \
    kde-oxygen-fonts \
    oxygen-icon-theme

ENV QT_GRAPHICSSYSTEM="native"
ADD start-kmymoney.sh /

CMD ["/bin/sh", "/start-kmymoney.sh"]
