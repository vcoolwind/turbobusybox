FROM alpine:3.12
MAINTAINER wangyanfeng <yanfengking@163.com>

ARG TZ='Asia/Shanghai'
ENV DEFAULT_TZ ${TZ}

RUN apk add --no-cache \
        busybox-extras \
		bzip2  \
		curl   \
		wget   \
		socat  \
		tzdata \
		bash
		
RUN rm -rf /var/cache/*/* 
RUN cp /usr/share/zoneinfo/${DEFAULT_TZ} /etc/localtime  \
    && echo ${DEFAULT_TZ} >  /etc/timezone

# change default shell from ash to bash
RUN echo "" > /root/.ash_history
RUN sed -i -e "s/bin\/ash/bin\/bash/" /etc/passwd

ENV LC_ALL=en_US.UTF-8

WORKDIR /root		

CMD ["/bin/bash"]