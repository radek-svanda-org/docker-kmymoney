FROM opensuse:42.1
RUN zypper --non-interactive install kmymoney
RUN zypper --non-interactive install kde-oxygen-fonts oxygen-icon-theme-scalable
ENV QT_GRAPHICSSYSTEM="native"
CMD kmymoney