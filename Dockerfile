FROM alpine
MAINTAINER Ryan Lieu <github-benzBrake@woai.ru>

CMD ["/bin/sh"]
RUN /bin/sh -c apk add --update tzdata
ENV TZ=Asia/Shanghai

RUN /bin/sh -c wget --no-check-certificate https://raw.githubusercontent.com/iiiiiii1/CTList/master/exec/amd64/linux/CTList     && mkdir /ctlist     && cp CTList /ctlist/CTList     && chmod +x /ctlist/CTList     && rm -rf CTList     && mkdir /conf     && rm -rf /var/cache/apk/*

VOLUME [/conf]
WORKDIR /ctlist
ENTRYPOINT ["./CTList" "-a" "b9eb2fee7758ebbab0354ebe88190e36" "-c" "/conf/config.json" "-t" "/conf/index.html" "-bind" "0.0.0.0"]