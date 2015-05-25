FROM phusion/baseimage:0.9.16
MAINTAINER Jin Chen <foalford@gmail.com>

ENV HOME /root
ADD build /build
RUN echo 'Acquire::http { Proxy "http://10.8.8.8:3142"; };' >> /etc/apt/apt.conf.d/01proxy && /build/install.sh
CMD ["/sbin/my_init"]
RUN rm /etc/apt/apt.conf.d/01proxy
EXPOSE 18444 18332 22

