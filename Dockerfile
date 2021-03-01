FROM matthiaslohr/f5fpc:0.1.0 

LABEL maintainer="Tinker Dong <dong115@uwindsor.ca>"
LABEL architecture="amd64"

COPY ./files/opt/* /opt/

CMD ["/opt/idle.sh"]
